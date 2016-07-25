module.exports = function() {

    this.Given(/^I have visited localhost Services$/, function () {
      browser.url('http://192.168.1.123:4000/service');
    });

    this.Then(/^I see table "([^"]*)" and I see home cleaning service$/, function (arg1) {
      browser.waitForExist('p='+arg1,10000);
      browser.waitForExist('tr[data-reactid=".0.1.2.2.2.1.1.0.1.$0"]',10000);
    });


    this.Then(/^I click on home cleaning service title$/, function () {
      browser.click('td=1');
      browser.click('td=1');
   });

    this.Then(/^I click on home cleaning service title2$/, function () {
      browser.click('td=0');
      browser.click('td=0');
   });

    this.Then(/^I see title "([^"]*)"$/, function (arg1) {
      browser.waitForExist(arg1,10000);
   });

    this.Then(/^I see title name "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('input[data-reactid=".1.1.0.0.1.0.1.0.0.1"]');
   });

    this.Then(/^I enter name with value "([^"]*)"$/, function (arg1) {
  
   });


   this.Then(/^I enter name with value "([^"]*)" and id "([^"]*)"$/, function (arg1, arg2) {
      browser.setValue('input[data-reactid="'+arg2+'"]',arg1);
  });

  this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
    browser.waitForExist('button='+arg1,10000);
    browser.click('button='+arg1);
  });


  this.Then(/^I see dialog "([^"]*)" and i click on button "([^"]*)"$/, function (arg1, arg2) {
    browser.waitForExist('h4='+arg1,10000);
    browser.click('button='+arg2);
  });

  this.Then(/^I see error$/, function () {
    browser.waitForExist('error',1000);
  });

  this.Then(/^I see dialog success$/, function () {

  });

  this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
    browser.waitForExist(arg1,10000);
  });

}
