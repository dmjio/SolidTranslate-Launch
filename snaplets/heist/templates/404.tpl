<apply template="base">
  <!-- Title -->
  <bind tag="titletag">404</bind>
  <!-- Styles -->
  <bind tag="styles"><link rel="stylesheet" href="/static/css/screen.css" type="text/css" media="screen" /></bind>
  <!-- Nav -->
  <bind tag="navtop">
    <ul class="nav navbar-nav">
    </ul>
  </bind>
  <!-- Body -->
  <bind tag="bodyContent">
    <div class="container text-center">
      <div class="jumbotron">
        <h2>404</h2>
        <p>Couldn't find this page</p>
        <a class="btn btn-success" href="/">Go Home</a>
      </div>
    </div>
  </bind>
</apply>
