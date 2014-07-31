var Country = function (add, first_select_box, second_select_box) {
  this.add = add;
  this.remove = remove;
};
Country.prototype = {
  constructor: Country,
  country: function (first_select_box, second_select_box) {
    second_select_box.appendChild(first_select_box.selectedOptions[0]);
  },
  bind_events: function (first_select_box, second_select_box) {
    this.add.addEventListener('click', this.country.bind(this, first_select_box, second_select_box));
    this.remove.addEventListener('click', this.country.bind(this, second_select_box, first_select_box));
  }
}
window.onload = function () {
  obj = new Country(document.getElementById('add'), document.getElementById('remove'));
  obj.bind_events(document.getElementById('first_select_box'), document.getElementById('second_select_box'));
}
