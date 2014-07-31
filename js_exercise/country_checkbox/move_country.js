var Country = function (add, firstSelectBox, secondSelectBox) {
  this.add = add;
  this.remove = remove;
};
Country.prototype = {
  constructor: Country,
  country: function (firstSelectBox, secondSelectBox) {
    secondSelectBox.appendChild(firstSelectBox.selectedOptions[0]);
  },
  bind_events: function (firstSelectBox, secondSelectBox) {
    this.add.addEventListener('click', this.country.bind(this, firstSelectBox, secondSelectBox));
    this.remove.addEventListener('click', this.country.bind(this, secondSelectBox, firstSelectBox));
  }
}
window.onload = function () {
  obj = new Country(document.getElementById('add'), document.getElementById('remove'));
  obj.bind_events(document.getElementById('first_select_box'), document.getElementById('second_select_box'));
}
