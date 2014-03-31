{-# LANGUAGE FlexibleInstances   #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell     #-}

module Main (main)  where

import           Control.Exception             hiding (Handler, catch)
import           Control.Lens                  (makeLenses)
import           Control.Monad.CatchIO         (catch)
import           Data.ByteString               (ByteString)
import qualified Data.ByteString.Char8         as B8
import           Data.Monoid                   ((<>))
import           Data.Text                     (Text)
import qualified Data.Text                     as T
import           Data.Text.Encoding            (decodeUtf8)
import           Data.Time
import           Snap
import           Snap.Core
import           Snap.Loader.Static
import           Snap.Snaplet.Config
import           Snap.Snaplet.Heist            (HasHeist (heistLens), Heist,
                                                heistInit, render)
import           Snap.Snaplet.PostgresqlSimple
import           Snap.Util.FileServe           (serveDirectory, serveFile)
import           System.IO
import           Text.Email.Validate           (isValid)

-- | Snap Code
data App = App  { _heist :: Snaplet (Heist App)
                , _db    :: Snaplet Postgres
                }

makeLenses ''App

instance HasHeist App where heistLens = subSnaplet heist
instance HasPostgres (Handler b App) where getPostgresState = with db get

handleHome :: Handler App App ()
handleHome = method GET handleGet
  where handleGet = render "index"

addEmail :: Text -> Handler App Postgres Text
addEmail email = do [Only e] <- query "INSERT INTO emails values (?) returning email" $
                                Only email
                    return e

getEmails :: Text -> Handler App Postgres [Text]
getEmails email =
    do es <- query "select email from emails where email = ?"  (Only email)
       case es of
         (Only e) : _ -> return [e]
         otherwise -> return []

handleSignUp :: Handler App Postgres ()
handleSignUp = method POST $ do
  Just e <- getParam "login"
  let email = decodeUtf8 e
  if isValid e
     then do emails <- getEmails email
             case emails of
               [] -> do addEmail email
                        render "thankyou"
               (e:_) -> render "thankyou"
     else render "invalidemail"

routes :: [(ByteString, Handler App App ())]
routes = [ ("/", ifTop $ render "index")
         , ("/register", with db handleSignUp)
         , ("/faq", render "faq")
         , ("/static",  serveDirectory "static")
         , ("", the404)
         ]

-- | Main Code
app :: SnapletInit App App
app = makeSnaplet "app" "An snaplet example application." Nothing $ do
    h <- nestSnaplet "heist" heist $ heistInit "templates"
    d <- nestSnaplet "db" db pgsInit
    wrapSite $ catchError "Error"
    wrapSite (<|> forceHTTPS)
    addRoutes routes
    return $ App h d

the500 :: HasHeist b => ByteString -> Handler b v ()
the500 msg = do modifyResponse $ setResponseCode 500
                logError msg
                render "error"

catchError :: HasHeist b => ByteString -> Handler b v ()  -> Handler b v ()
catchError msg action = action `catch` \(e::SomeException) -> the500 (err e <> msg)
  where err e = B8.pack $ show e

the404 :: Handler App a ()
the404 = do modifyResponse $ setResponseStatus 404 "Not Found"
            render "404"

forceHTTPS :: Handler App App ()
forceHTTPS = do
  req <- getRequest
  when (rqIsSecure req) pass
  redirect' ("https://" <> rqServerName req <> rqURI req <> rqQueryString req) 301

main :: IO ()
main = do
  (conf, site, cleanup) <- $(loadSnapTH [| getConf |] 'getActions ["snaplets/heist/templates"])
  _ <- try $ httpServe conf site :: IO (Either SomeException ())
  cleanup

getConf :: IO (Config Snap AppConfig)
getConf = commandLineAppConfig defaultConfig

getActions :: Config Snap AppConfig -> IO (Snap (), IO ())
getActions conf = do (msgs, site, cleanup) <- runSnaplet (appEnvironment =<< getOther conf) app
                     hPutStrLn stderr $ T.unpack msgs
                     return (site, cleanup)


