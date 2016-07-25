module.exports = function() {

  this.Given(/^I have visited Localhost$/, function () {
      browser.url('http://192.168.1.123:4000/');
  });

  this.When(/^I see title "([^"]*)"$/, function (arg1) {
     browser.waitForExist('span='+arg1,10000);
  });


  this.When(/^I click on admin "([^"]*)"$/, function (arg1) {
      browser.click('span='+arg1);
  });

  this.When(/^I see back end user "([^"]*)"$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
  });

  this.Then(/^I click on back end user "([^"]*)"$/, function (arg1) {
    browser.click('a='+arg1);
  });

  this.Then(/^I see collection "([^"]*)"$/, function (arg1) {
      browser.waitForExist('h3='+arg1,10000);
    });

  this.Then(/^I click first user "([^"]*)"$/, function (arg1) {
      browser.click('a[data-reactid=".0.1.2.0.1.0.1.$HJuGgEcRZjwk8a3TX.0"]');
    });

  this.Then(/^I click user "([^"]*)"$/, function (arg1) {
      browser.click('a='+arg1);
    });

   this.Then(/^I see information of user "([^"]*)"$/, function (arg1) {
      browser.waitForExist('span='+arg1,10000);
    });

   this.Then(/^I click edit user$/, function () {
      browser.click('a=edit');
  });

   this.Then(/^I see page edit user$/, function () {
      browser.waitForExist('label=Username',10000);
    });

   this.Then(/^I set value for the textfield password "([^"]*)"$/, function (arg1) {
      browser.setValue('input[name="password"]', arg1);
    });

    this.Then(/^submit the form$/, function () {
      browser.click('button=Lưu');
    });

    this.Then(/^I see dialog Xac Nhan "([^"]*)"$/, function (arg1) {
      browser.waitForExist('h4='+arg1,10000);
    });

    this.Then(/^I click button ok "([^"]*)"$/, function (arg1) {
      browser.click('button='+arg1);
    });

    this.Then(/^I set value for the textfield username "([^"]*)"$/, function (arg1) {
      browser.setValue('input[name="username"]', arg1);
    });

    this.Then(/^I set value for the textfield email "([^"]*)"$/, function (arg1) {
      browser.setValue('input[name="email"]', arg1);
    });

    this.Then(/^I must see error email can not change$/, function () {
      browser.waitForExist('email=disable',1000);
    });

     this.Then(/^I must see error password use six or more characters$/, function () {
      browser.waitForExist('password=six or more characters',1000);
    });

     this.Then(/^I must see error username use six or more characters$/, function () {
      browser.waitForExist('username=six or more characters',1000);
    });

    this.Then(/^I click delete user$/, function () {
      browser.click('a=delete');
    });

    this.Then(/^I click on title "([^"]*)"$/, function (arg1) {
      browser.click('span='+arg1);
    });

}

