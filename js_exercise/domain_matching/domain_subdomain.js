var Match = function (formEvents) {
  this.formEvents = formEvents;
  this.result = '';
};

// Match.prototype.REGEXTOSPLIT = /^http:\/\/((\w)*|\.)(.)((\w|\.)*)/;
Match.prototype.REGEXTOSPLIT = /([a-z]*)(.)(.*)$/;
Match.prototype.REGEX = /^(http:\/\/)?([a-z]+(\.)[a-z]+)*$/;
Match.prototype.validate = function () {
  return this.REGEX.test(this.formEvents[0].value)
};

Match.prototype.domainSubdomain = function (event) {
    event.preventDefault();
  if (this.validate()) {
    this.result = this.REGEXTOSPLIT.exec(this.formEvents[0].value);
    debugger;
    str = 'doamin is ' + this.result[3];
    if (this.result[1]) {
    str += ' subdomain is ' + this.result[1];
    }
    alert(str)
  } else {
    alert('not valid')
  }
};

Match.prototype.bindEvents = function () {
  this.formEvents[1].addEventListener('click', this.domainSubdomain.bind(this));
};

window.onload = function () {
  obj = new Match(document.forms[0]);
  obj.bindEvents()
};
