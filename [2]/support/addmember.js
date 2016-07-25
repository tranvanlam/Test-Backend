module.exports = function() {

    this.Given(/^I have visited localhost task$/, function () {
      browser.url('http://192.168.1.123:4000/task');
    });

    this.Then(/^I see state posted$/, function () {
      browser.waitForExist('div=POSTED - schedule',10000);
    });

    this.Then(/^I click state posted$/, function () {
      browser.click('div=POSTED - schedule');
      browser.click('div=POSTED - schedule');
    });

    this.Then(/^I click on title Them Nguoi Nhan "([^"]*)"$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
      browser.click('a='+arg1);
    });

    this.Then(/^I submit value when click button "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('button=Thêm',10000);
      browser.click('button=Thêm');
    });

    this.Then(/^I see and enter phone number input "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('input[data-reactid=".3.1.0.0.1.1.1.3.0.0.0.0"]',10000);
      browser.setValue('input[data-reactid=".3.1.0.0.1.1.1.3.0.0.0.0"]', arg1);
  });

    this.Then(/^I see dialog Xac Nhan and click "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('button='+arg1);
      browser.click('button='+arg1);
  });

    this.Then(/^I see dialog Error$/, function () {
      browser.waitForExist('button=Close');
  });

    this.Then(/^I see dialog Success$/, function () {
      browser.waitForExist('button=Close');
  });

     this.When(/^I see state waiting$/, function () {
      browser.waitForExist('div=CONFIRMED - schedule',10000);
  });

   this.When(/^I see state confirmed$/, function () {
      browser.waitForExist('div=CONFIRMED - schedule',10000);

    });

   this.When(/^I click state confirmed$/, function () {
      browser.click('div=CONFIRMED - schedule');
      browser.click('div=CONFIRMED - schedule');
    });



    this.When(/^I click state waiting$/, function () {
      browser.click('div=WAITING - schedule');
      browser.click('div=WAITING - schedule');
  });

    this.When(/^I click on title Nguoi Nhan "([^"]*)"$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
      browser.click('a='+arg1);
  });


   this.Then(/^I see and click button "([^"]*)" in "([^"]*)"$/, function (arg1, arg2) {

        browser.waitForVisible('button='+arg1);
        browser.click('button='+arg1);

    });

  this.Then(/^I see dialog Success and click button "([^"]*)"$/, function (arg1) {
        
        browser.waitForVisible('button[data-reactid=".4.1.0.0.2.1"]');
        browser.click('button[data-reactid=".4.1.0.0.2.1"');

  });

}

