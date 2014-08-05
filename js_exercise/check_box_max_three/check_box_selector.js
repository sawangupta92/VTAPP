var CheckBox = function (days, none) {
  this.days = days;
  this.none = none;
  this.checkedDays = [];
};
CheckBox.prototype = {
  constructor: CheckBox,
  select: function (selectedDay) {
    var checkedDaysLength = this.checkedDays.length;
    if (checkedDaysLength > 2) {
      selectedDay.checked = false;
      alert('you can not do this already selected days are ' + this.checkedDays);
    } else {
      this.checkedDays.push(selectedDay.value);
      if (checkedDaysLength == 0) {
        this.none.checked = false;
      }
    }
  },
  deselect: function (selectedDay) {
    this.checkedDays.splice(this.checkedDays.indexOf(selectedDay.value), 1);
  },
  changeState: function (selectedDay) {
    if (selectedDay.checked) {
      this.select(selectedDay);
    } else {
      this.deselect(selectedDay);
    }
  },
  uncheckAll: function (totalDaysLength) {
    this.checkedDays = [];
    for (index = 0; index < totalDaysLength; index++) {
      this.days[index].checked = false;
    }
  },
  bindEvent: function () {
    var totalDaysLength = this.days.length;
    for (index = 0; index < totalDaysLength; index++) {
      this.days[index].addEventListener('click', this.changeState.bind(this, this.days[index]));
    }
    this.none.addEventListener('click', this.uncheckAll.bind(this, totalDaysLength));
  }
};
window.onload = function () {
  var obj = new CheckBox(document.getElementsByClassName('days'), document.getElementById('none'));
  obj.bindEvent();
}
