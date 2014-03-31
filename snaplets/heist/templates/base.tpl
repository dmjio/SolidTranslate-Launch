<apply template="abstractbase">
  <!-- Header -->
  <bind tag="myhead">
    <head>
      <apply template="header"/>
      <title>SolidTranslate: <titletag /></title>
      <styles />
    </head>
  </bind>
  <!-- Body -->
  <bind tag="mybody">
    <body>
      <apply template="navbar" />
      <bodyContent />
      <script src="/static/js/jquery.min.js"></script>
      <!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script> -->
      <script src="/static/js/bootstrap.min.js"></script>
      <!--[if lt IE 9]><script src="static/js/html5shiv.js"></script><![endif]-->
      <scripts />
      <apply template="analytics"></apply>
    </body>
  </bind>
</apply>




