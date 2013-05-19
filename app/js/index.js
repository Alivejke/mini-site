(function() {
  var onPhotoClick, showPopup;

  onPhotoClick = function(event) {
    var $target, idx, quantity, url;

    $target = $(event.currentTarget);
    url = $target.children('img').attr('src').slice(0, -10);
    idx = $target.parent().index();
    quantity = $target.parent().siblings().length;
    showPopup(idx, quantity, url);
    return false;
  };

  showPopup = function(idx, quantity, url) {
    return console.log(idx, quantity, url);
  };

  $(document).ready(function() {
    var $aside;

    $aside = $('#apartment_photos');
    if ($aside[0]) {
      $aside.css('min-height', $('#apartment').outerHeight() - 40);
      return $aside.on('click', 'a', onPhotoClick);
    }
  });

}).call(this);

/*
//@ sourceMappingURL=index.js.map
*/