<apply template="base">
  <!-- Title -->
  <bind tag="titletag">Error</bind>
  <!-- Styles -->
  <bind tag="styles">
    <link rel="stylesheet" href="/static/css/screen.css" type="text/css" media="screen" />
  </bind>
  <!-- Scripts -->
  <bind tag="scripts">
    <script src="/static/js/index.js"></script>
  </bind>
  <!-- Nav -->
  <bind tag="navtop">
    <ul class="nav navbar-nav">
    </ul>
  </bind>
  <!-- Body -->
  <bind tag="bodyContent">
    <div class="container">
      <div class="text-center jumbotron" style="height: 362px">
          <h1 style="font-size: 56px; color: #555">Solid Translate</h1>
          <p style="font-size: 22px;">SolidWorks Version Compatibility solved.</p>
          <p style="font-size: 34px;font-weight: 200;color:red">
            There has been an error on our end.
          </p>
          <button href="/" class="btn btn-lg btn-success">Go Home</button>
      </div>
    </div>
    <apply template="bottomcontent"/>
    <hr />
    <div class="container text-center">
      <p style="font-size: 20px; font-weight:200">&copy;
        SolidTranslate.com 2014</p> 
    </div>
  </bind>
</apply>

