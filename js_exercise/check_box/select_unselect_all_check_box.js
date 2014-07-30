var Colors_checkbox = function (colors, check_all, check_none) {
  this.colors = colors;
  this.check_all = check_all;
  this.check_none = check_none;
};
Colors_checkbox.prototype = {
  constructor: Colors_checkbox,
  check_uncheck: function (state) {
    for (index in this.colors)
    {
      this.colors[index].checked = state;
    }
  },
  bind: function () {
    this.check_all.addEventListener('click', this.check_uncheck.bind(this, true));
    this.check_none.addEventListener('click', this.check_uncheck.bind(this, false));
  }
};
window.onload = function () {
  var colors = document.getElementsByClassName('color');
  var check_all = document.getElementById('check');
  var check_none = document.getElementById('uncheck');
  var obj = new Colors_checkbox(colors, check_all, check_none);
  obj.bind();
}