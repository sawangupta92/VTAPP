var ChangeState = function (days, none) {
  this.days = days;
  this.none = none;
  this.counter = 0;
  this.checkedDays = [];
};
ChangeState.prototype = {
  constructor: ChangeState,
  pushPop: function (selectedDay) {
    if (selectedDay.checked) {
      this.checkedDays.push(selectedDay.value);
    } 
    else if (this.checkedDays.indexOf(selectedDay.value) != - 1) {
      this.checkedDays.splice(this.checkedDays.indexOf(selectedDay.value), 1);
    }
  },
  select: function (selectedDay) {
    if (this.checkedDays.length > 2) {
      selectedDay.checked = false;
      this.pushPop(selectedDay);
      if (this.checkedDays.length > 2) {
        alert('you can not do this already selected days are ' + this.checkedDays);
      }
    } 
    else {
      this.none.checked = false;
      this.pushPop(selectedDay);
    }
  },
  uncheckAll: function () {
    this.checkedDays = [];
    for (index = 0; index < this.days.length; index++) {
      this.days[index].checked = false;
    }
  },
  bindEvent: function () {
    for (index = 0; index < this.days.length; index++) {
      this.days[index].addEventListener('click', this.select.bind(this, this.days[index]));
    }
    this.none.addEventListener('click', this.uncheckAll.bind(this));
  }
};
window.onload = function () {
  var obj = new ChangeState(document.getElementsByClassName('days'), document.getElementById('none'));
  obj.uncheckAll();
  obj.bindEvent();
}
