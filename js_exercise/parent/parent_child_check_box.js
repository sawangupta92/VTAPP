var Check = function (outerCheckbox) {
  this.outerCheckbox = outerCheckbox;
};

Check.prototype.show = function (outerList) {
  outerList.children[1].style.display = 'block';
  outerList.scrollIntoView();
};

Check.prototype.uncheckList = function (outerList) {
  var outerListLength = outerList.childElementCount,
      inputCheckbox = document.getElementsByClassName(outerList.id);
  for (var index = 0; index < outerListLength; index++);
  {
    inputCheckbox[index].checked = false;
  }
};

Check.prototype.hide = function (outerList) {
  outerList.children[1].style.display = 'none';
  this.uncheckList(outerList);
};

Check.prototype.showHide = function (currentOuterCheckbox) {
  outerList = document.getElementById(currentOuterCheckbox.parentNode.attributes['id'].value);
  if (currentOuterCheckbox.checked) {
    this.show(outerList);
  } else {
    this.hide(outerList);
  }
};

Check.prototype.bindEvents = function () {
  var outerCheckboxLength = this.outerCheckbox.length;
  for (var index = 0; index < outerCheckboxLength; index++) {
    this.outerCheckbox[index].addEventListener('click', this.showHide.bind(this, this.outerCheckbox[index]));
  }
};

window.onload = function () {
  var outerCheckbox = document.getElementsByClassName('upper_checkbox'),
      innerListLength = document.getElementsByClassName('innerList') .length;
  obj = new Check(outerCheckbox);
  obj.bindEvents();
  for (var index = 0; index < innerListLength; index++) {
    obj.showHide(outerCheckbox[index]);
  }
}
