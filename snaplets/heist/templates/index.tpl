<apply template="base">
  <!-- Title -->
  <bind tag="titletag"></bind>
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
      <div class="text-center jumbotron" style="height: 362px;
                                                background-color: rgba(225, 225, 225, 0.4)">
          <h1 style="font-size: 56px; color: #555">SolidTranslate</h1>
          <p style="font-size: 22px; 
                    ">
            SolidWorks version compatibility solved.</p>
          <p style="font-size: 15px;
                    font-weight:200;
                    color:red">
            Coming February 2014</p>
        <!-- form -->
        <form id="regform" 
              class="form-signin text-center formsubmit" 
              method="post" action="/register" style="z-index:50">
          <div class="input-group input-group-lg top" id="emailVal">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input id="email" 
                   type="text" 
                   class="form-control input-lg" 
                   name="login" 
                   placeholder="Email">

          </div>
          <button data-loading-text="Registering..."  
                  class="btn btn-lg btn-success btn-block"
                  disabled="disabled"
                  type="submit"><i class="fa fa-edit
                                          fa-lg"></i> Keep me notified!</button>
          <p style="font-size: 20px; color: #ccc;" id="validation"></p>
        </form>               
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


