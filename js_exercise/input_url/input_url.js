var PopUp = function (url) {
  this.url = url;
}
PopUp.prototype = {
  constructor: PopUp,
  show: function () {
    if (this.url.trim() != '' && this.url != null) {
      window.open('http://' + this.url, '_blank', 'width=400, height=450, menubar=no, scrollbar=no, titlebar=no, toolbar=no');
    } else {
      alert('wrong url');
    }
  }
};
window.onload = function () {
  var url = prompt('enter URL');
  obj = new PopUp(url);
  obj.show();
}
