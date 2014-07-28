var Change_state = function (days, none) {
  this.days = days;
  this.none = none;
  this.counter = 0;
  this.checked_days = [];
};
Change_state.prototype = {
  constructor: Change_state,
  push_pop: function (selected_day) {
    if (selected_day.checked) {
      this.checked_days.push(selected_day.value);
    } 
    else if (this.checked_days.indexOf(selected_day.value) != - 1){
      this.checked_days.splice(this.checked_days.indexOf(selected_day.value), 1);
    }
  },
  select: function (selected_day) {
    if (this.checked_days.length > 2) {
      selected_day.checked = false;
      this.push_pop(selected_day);
      if (this.checked_days.length > 2) {
        alert('you can not do this already selected days are ' + this.checked_days);
      }
    } 
    else {
      this.none.checked = false;
      this.push_pop(selected_day);
    }
  },
  uncheck_all: function () {
    this.checked_days = [];
    for (day in Iterator(this.days)) {
      day[1].checked = false;
    }
  },
  bind_event: function () {
    for (day in Iterator(this.days)) {
      day[1].addEventListener('click', this.select.bind(this, day[1]));
    }
    this.none.addEventListener('click', this.uncheck_all.bind(this));
  }
};
window.onload = function () {
  var obj = new Change_state(document.getElementsByClassName('days'), document.getElementById('none'));
  obj.uncheck_all();
  obj.bind_event();
}
