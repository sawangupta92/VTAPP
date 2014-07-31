var Check = function (outerCheckbox, mainList) {
  this.outerCheckbox = outerCheckbox;
  this.mainList = mainList;
};

Check.prototype = {
  constructor: Check,
  show: function (outerList) {
    outerList.children[1].style.display = 'block';
    outerList.scrollIntoView();
    for (index = 0; index < outerList.children[1].childElementCount; index++)
    {
      outerList.children[1].children[index].children[0].checked = false;
    }
  },
  hide: function (outerList) {
    outerList.children[1].style.display = 'none';
  },
  showHide: function (current_outer_checkbox) {
    outerList = document.getElementById(current_outer_checkbox.parentNode.attributes['id'].value);
    if (current_outer_checkbox.checked) {
      this.show(outerList)
    } else {
      this.hide(outerList)
    }
  },
  bindEvents: function () {
    for (index = 0; index < this.outerCheckbox.length; index++) {
      this.outerCheckbox[index].checked = false;
      this.outerCheckbox[index].addEventListener('click', this.showHide.bind(this, this.outerCheckbox[index]))
      this.showHide(this.outerCheckbox[index])
    }
  },
};

window.onload = function () {
  var mainList = document.getElementsByClassName('mainlist'),
      outerCheckbox = document.getElementsByClassName('upper_checkbox');
  obj = new Check(outerCheckbox, mainList);
  obj.bindEvents()
}
