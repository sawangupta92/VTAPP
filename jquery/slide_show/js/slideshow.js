var slideshow = function () {
};
slideshow.prototype.prependToBody = function () {
  $('body').prepend('<div style="height: 400px" id=slideshowCointainer> </div>')
  $('#slideshowCointainer').prepend($('#slideshow'))
};
slideshow.prototype.hideAll = function () {
  $('#slideshow').find('li').hide();
};
slideshow.prototype.showHide = function (index) {
  $('#slideshow li:eq(' + index + ')').fadeIn(2000).fadeOut(2000);
};
slideshow.prototype.delayAndExecute = function () {
  _this = this;
  var index = 1;
  setInterval(function () {
    _this.showHide(index)
    if (index < 2) {
      index++;
    } else {
      index = 0;
    }
  }, 4000)
};
slideshow.prototype.initialize = function () {
  this.prependToBody()
  this.hideAll()
  this.showHide(0)
  this.delayAndExecute()
};
obj = new slideshow()
obj.initialize()
