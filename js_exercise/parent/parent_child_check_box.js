var Check = function (outerCheckbox, mainList, innerList) {
  this.outerCheckbox = outerCheckbox;
  this.mainList = mainList;
  this.innerList = innerList;
};
Check.prototype = {
  constructor: Check,
  show: function (outerList) {
    outerList.children[1].style.display = 'block';
    outerList.scrollIntoView();
  },
  uncheckList: function (currentInnerCheckbox) {
    for (var index = 0; index < currentInnerCheckbox.childElementCount; index++)
    {
      currentInnerCheckbox.children[index].children[0].checked = false;
    }
  },
  hide: function (outerList, currentInnerCheckbox) {
    outerList.children[1].style.display = 'none';
    this.uncheckList(currentInnerCheckbox);
  },
  showHide: function (currentOuterCheckbox, currentInnerCheckbox) {
    outerList = document.getElementById(currentOuterCheckbox.parentNode.attributes['id'].value);
    if (currentOuterCheckbox.checked) {
      this.show(outerList)
    } else {
      this.hide(outerList, currentInnerCheckbox)
    }
  },
  bindEvents: function () {
    for (var index = 0; index < this.outerCheckbox.length; index++) {
      this.outerCheckbox[index].addEventListener('click', this.showHide.bind(this, this.outerCheckbox[index], this.innerList[index]));
    }
  },
};
window.onload = function () {
  var mainList = document.getElementsByClassName('mainlist'),
      outerCheckbox = document.getElementsByClassName('upper_checkbox'),
      innerList = document.getElementsByClassName('innerList');
  obj = new Check(outerCheckbox, mainList, innerList);
  obj.bindEvents()
 for (var index = 0; index < innerList.length; index++) {
   obj.showHide(outerCheckbox[index], innerList[index])
  }
}
