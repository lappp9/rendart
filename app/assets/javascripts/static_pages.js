
$(function() {

  var images, lastImage, nextImage;
  var currentImage = 0;

  images = ["cequel.jpg", "cequel13.jpg", "cequel7.jpg", "ameren2.jpg", "ameren.jpg", "residential5.jpg", "residential.jpg", "cozzens3.jpg", "residential6.jpg", "sketch4.jpg", "station4.jpg", "physical.jpg", "ka.jpg"];

  lastImage = function() {
    currentImage--;
    if (currentImage === -1) {
      currentImage = 12;
    }
    return currentImage;
  };

  nextImage = function() {
    currentImage++;
    if (currentImage === 13) {
      currentImage = 0;
    }
    return currentImage;
  };

  $("#left").click(function(e) {
    e.preventDefault();
    $("#content").css("background-image", "url(/assets/" + images[lastImage()] + ")");
  });

  $("#right").click(function(e) {
    e.preventDefault();
    $("#content").css("background-image", "url(/assets/" + images[nextImage()] + ")");
  });

  $(document).keydown(function(e) {
    if (e.keyCode === 39) {
      $("#right").click();
      return false;
    }
  });

  $(document).keydown(function(e) {
    if (e.keyCode === 37) {
      $("#left").click();
      return false;
    }
  });

});
