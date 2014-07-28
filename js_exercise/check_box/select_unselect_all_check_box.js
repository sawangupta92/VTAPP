var Change_state = function () {
  this.color = document.getElementsByClassName('color');
  this.all = document.getElementById('check');
  this.none = document.getElementById('uncheck');
};
Change_state.prototype = {
  constructor: Change_state,
  check_all: function () {
    for (var index = 0; index < this.color.length; index++) {
      this.color[index].checked = true;
    }
  },
  uncheck_all: function () {
    for (var index = 0; index < this.color.length; index++) {
      this.color[index].checked = false;
    }
  },
  check_uncheck: function () {
    this.all.addEventListener('click', this.check_all.bind(this));
    this.none.addEventListener('click', this.uncheck_all.bind(this));
  }
};
window.onload = function () {
  var obj = new Change_state();
  obj.check_uncheck();
}
