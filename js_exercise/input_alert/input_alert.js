var Name = function (firstName, lastName) {
  this.firstName = this.inputName('enter your first name');
  this.lastName = this.inputName('enter your last name');
}
var REGEX = {
  name: /^([a-z]+)$/i,
};
Name.prototype.validate = function (name) {
  return REGEX.name.test(name);
};
Name.prototype.display = function () {
  alert('Hello ' + this.firstName + ' ' + this.lastName);
  document.body.innerHTML = 'Hello ' + this.firstName + ' ' + this.lastName;
};
Name.prototype.inputName = function (msg){
  name = prompt(msg);
  if(!this.validate(name) | name == 'null'){
    alert('please enter valid name consisting alphabets only')
    this.inputName(msg)
  }
  return name;
};
window.onload = function () {
  obj = new Name();
  obj.display();
}
