
$(function() {

  var images, lastImage, nextImage;
  var currentImageIndex = 0;

  function createHomeImage(url){
    var div = $("<div style=\"background-image: url('"+url+"');\"/>");
    div.addClass('background');

    $('.content-backgrounds').prepend(div);
  }

  var images = [
    "http://cdn.rendartstl.com/images/cequel.jpg",
    "http://cdn.rendartstl.com/images/ka.jpg",
    "http://cdn.rendartstl.com/images/physical.JPG", 
    "http://cdn.rendartstl.com/images/station4.jpg", 
    "http://cdn.rendartstl.com/images/sketch4.JPG", 
    "http://cdn.rendartstl.com/images/residential6.jpg", 
    "http://cdn.rendartstl.com/images/cozzens3.jpg", 
    "http://cdn.rendartstl.com/images/residential.jpg", 
    "http://cdn.rendartstl.com/images/residential5.jpg", 
    "http://cdn.rendartstl.com/images/ameren.jpg", 
    "http://cdn.rendartstl.com/images/ameren2.jpg", 
    "http://cdn.rendartstl.com/images/cequel3.jpg",
    "http://cdn.rendartstl.com/images/cequel7.jpg"
  ];


  for( var i = images.length; i > 0; i--){
    createHomeImage(images[i-1]);
  }

  $( $('.background')[0]).addClass('active');

  //Set a drop shadow
  function setShadow(percent) {
    var min = 20, max = 250;
    var val = (max - min) * percent + min;
    $('.shadow').css('box-shadow', 'inset 0 -'+val+'px '+val+'px rgba(0,0,0,'+((percent * .8)+.2)+')');
  }

  $(document).scroll(function() {
    var max = window.innerHeight, y = window.scrollY;

    setShadow( y / max );
  });

  lastImageIndex = function() {
    currentImageIndex--;
    if (currentImageIndex === -1) {
      currentImageIndex = 12;
    }
    return currentImageIndex;
  };

  //Scroll through the images 
  nextImageIndex = function() {
    currentImageIndex++;
    if (currentImageIndex === 13) {
      currentImageIndex = 0;
    }
    return currentImageIndex;
  };

  function move(inc){
    var index = $('.background.active').index() + inc;
    if( index >= images.length ) index = 0;
    if( index < 0 ) index = images.length - 1;

    $('.background').removeClass('active');
    $( $('.background')[index] ).addClass('active');
  }

  $("#left").click(function(e) {
    e.preventDefault();
    move(1);
  });

  $("#right").click(function(e) {
    e.preventDefault();
    move(-1);
  });

  //Allow arrow keys to scroll left and right
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
