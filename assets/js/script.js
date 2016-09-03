$(function(){
 var shrinkHeader = 250;
 $(window).scroll(function() {
    var scroll = getCurrentScroll();
      if ( scroll >= shrinkHeader ) {
           $('.header .navbar').addClass('fuller');
           $('.header .navbar .navbar-header').removeClass('hide');
           $('.header .navbar .navbar-header').addClass('show');

        }
        else {
            $('.header .navbar').removeClass('fuller');
            $('.header .navbar .navbar-header').removeClass('show');
           $('.header .navbar .navbar-header').addClass('hide');
        }
  });
function getCurrentScroll() {
    return window.pageYOffset || document.documentElement.scrollTop;
    }
});