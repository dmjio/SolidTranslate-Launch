<apply template="base">
  <!-- Title -->
  <bind tag="titletag">Password Reset</bind>
  <!-- Styles -->
  <bind tag="styles">
    <link rel="stylesheet" 
          href="/static/css/screen.css"
          type="text/css" 
          media="screen" />
  </bind>
  <!-- Scripts -->
  <bind tag="scripts">
    <script src="/static/js/forgotPassword.js"></script>
  </bind>
  <!-- Nav -->
  <bind tag="navtop">
    <ul class="nav navbar-nav">
      <li><a href="/about">About</a></li>
      <li><a href="/contact">Contact</a></li>
      <li><a href="/faq">FAQ</a></li>
    </ul>
  </bind>
  <!-- Body -->
  <bind tag="bodyContent">
    <div class="container text-center">
      <div class="text-center container" style="margin-top: -10px; border-radius: 10px;">
        <h1 style="margin-top:10px; color: #555;">Reset Password</h1>  
      </div>
      <form class="form-signin" method="post" action="/reset">
        <div class="input-group input-group-lg top" id="emailVal">
          <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
          <input id="email" type="text" 
                 class="form-control input-lg" name="login" placeholder="Email">
        </div>
        <button id="btnsubmit" class="btn btn-lg btn-success
                                      btn-block" type="submit">
          <i class="fa fa-lock fa-lg"></i>  Reset Password</button>
        <p style="font-size: 24px; margin-top: 10px; color: #555;
                  font-weight:200;" id="validation">
          You will receive a link shortly with instructions on resetting your password</p>
      </form>
    </div>
  </bind>
</apply>
