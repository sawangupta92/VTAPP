var Check = function (outer_checkbox, mainlist) {
  this.outer_checkbox = outer_checkbox;
  this.mainlist = mainlist;
};

Check.prototype = {
  constructor: Check,
  show: function (outer_list) {
    outer_list.children[1].style.display = 'block';
    outer_list.scrollIntoView();
    for (index = 0; index < outer_list.children[1].childElementCount; index++)
    {
      outer_list.children[1].children[index].children[0].checked = false;
    }
  },
  hide: function (outer_list) {
    outer_list.children[1].style.display = 'none';
  },
  show_hide: function (current_outer_checkbox) {
    outer_list = document.getElementById(current_outer_checkbox.parentNode.attributes['id'].value);
    if (current_outer_checkbox.checked) {
      this.show(outer_list)
    } else {
      this.hide(outer_list)
    }
  },
  bind_events: function () {
    for (index = 0; index < this.outer_checkbox.length; index++) {
      this.outer_checkbox[index].checked = false;
      this.outer_checkbox[index].addEventListener('click', this.show_hide.bind(this, this.outer_checkbox[index]))
      this.show_hide(this.outer_checkbox[index])
    }
  },
};

window.onload = function () {
  var mainlist = document.getElementsByClassName('mainlist'),
      outer_checkbox = document.getElementsByClassName('upper_checkbox');
  obj = new Check(outer_checkbox, mainlist);
  obj.bind_events()
}
