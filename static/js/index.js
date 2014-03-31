$(function() {

  function validateEmail(email) { 
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  } 

  $("#email").keypress(handler);
  $("#email").keydown(handler);
  $("#email").blur(handler);

  function handler(e) {
    var val = $(this).val(),
        btn = $('button'),
        ev = $("#emailVal");
    if (validateEmail(val)) {
      btn.removeAttr('disabled');
      ev.removeClass('has-error').addClass('has-success');
    } else {
      btn.attr('disabled', 'disabled');
      ev.removeClass('has-success').addClass('has-error');
    }
  }


});
