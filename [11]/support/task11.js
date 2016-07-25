module.exports = function() {

    this.Given(/^I have visited localhost task$/, function () {
      browser.url('http://192.168.1.123:4000/task');
    });

   this.Then(/^I see state posted$/, function () {
      browser.waitForExist('div=POSTED',10000);
    });

    this.Then(/^I click state posted$/, function () {
      browser.click('div=POSTED');
      browser.click('div=POSTED');
    });

    this.When(/^I see title "([^"]*)" and button cancle task$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
  });

   this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('button='+arg1);
      browser.click('button='+arg1);
  });


   this.Then(/^I click on button waiting "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('button[data-reactid=".4.1.0.0.2.0"]');
      browser.click('button[data-reactid=".4.1.0.0.2.0"]');
  });


   this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
      browser.waitForExist('h4='+arg1,10000);
  });


   this.Then(/^I see dialog Success and i click on button "([^"]*)"$/, function (arg1) {
      browser.waitForExist('button[data-reactid=".5.1.0.0.2.1"]',10000);
      browser.click('button[data-reactid=".5.1.0.0.2.1"]',100000);
  });

   this.Then(/^I enter the reason in input with id "([^"]*)" and text "([^"]*)"$/, function (arg1, arg2) {
      browser.setValue('input[data-reactid=".4.1.0.0.1.0.1.0"]',arg2)
  });

   this.Then(/^I see dialog Error$/, function () {
      browser.waitForExist('h4=Error',10000);
  });

  this.When(/^I see state confirmed$/, function () {
      browser.waitForExist('div=POSTED',10000);
  });

  this.When(/^I click state confirmed$/, function () {
      browser.click('div=CONFIRMED');
      browser.click('div=CONFIRMED');
  });

  this.When(/^I see state waiting$/, function () {
      browser.waitForExist('div=WAITING',10000);
  });

  this.When(/^I click state waiting$/, function () {
      browser.click('div=WAITING');
      browser.click('div=WAITING');
  });

  this.When(/^I see state expired$/, function () {
      browser.waitForExist('div=EXPIRED',10000);
  });

  this.When(/^I click state expired$/, function () {
      browser.click('div=EXPIRED');
      browser.click('div=EXPIRED');
  });


}
