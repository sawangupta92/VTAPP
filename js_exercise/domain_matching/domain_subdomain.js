var Match = function (formEvents) {
  this.formEvents = formEvents;
  this.result = '';
};

Match.prototype.REGEXTOSPLIT = /^http:\/\/((\w)*|\.)(.)((\w|\.)*)/;
Match.prototype.REGEX = /^(http:\/\/)/;
Match.prototype.validate = function () {
  return this.REGEX.test(this.formEvents[0].value)
};

Match.prototype.domainSubdomain = function (event) {
  if (this.validate()) {
    this.result = this.REGEXTOSPLIT.exec(this.formEvents[0].value);
    alert('doamin is ' + this.result[1]);
    if (this.result[4]) {
      alert('subdomain is ' + this.result[4]);
    }
  } else {
    alert('not valid')
    event.preventDefault();
  }
};

Match.prototype.bind_events = function () {
  this.formEvents[1].addEventListener('click', this.domainSubdomain.bind(this));
};

window.onload = function () {
  obj = new Match(document.forms[0]);
  obj.bind_events()
};
