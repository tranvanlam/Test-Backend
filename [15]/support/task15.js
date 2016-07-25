module.exports = function() {

    this.Given(/^I have visited localhost Promotion$/, function () {
      browser.url('http://192.168.1.123:4000/promotion-code');
    });

    this.Then(/^I see page Promotion and I see button "([^"]*)"$/, function (arg1) {
      browser.waitForExist('button='+arg1,10000);
    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.click('button='+arg1);
    });

    this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
      if(arg1!="Error")
       browser.waitForExist('h4='+arg1);
      else
       browser.waitForExist('h4=Error');
   });

    this.Then(/^I see textfield "([^"]*)"$/, function (arg1) {
      browser.waitForExist('div='+arg1,10000);
   });

    this.Then(/^I enter input with value "([^"]*)" and id "([^"]*)"$/, function (arg1,arg2) {
      browser.setValue('input[data-reactid="'+arg2+'"]',arg1);
   });

  this.Then(/^I see selectbox "([^"]*)"$/, function (arg1) {
      browser.waitForExist('div='+arg1);
  });

  this.Then(/^I click on selectbox "([^"]*)"$/, function (arg1) {
      browser.click('select[data-reactid="'+arg1+'"]');
  });

  this.Then(/^I see option "([^"]*)" and i click it$/, function (arg1) {
      browser.waitForExist('option='+arg1);
      browser.click('option='+arg1);
  });

  this.Then(/^I see input start date and I set it with value "([^"]*)"$/, function (arg1) {
      browser.addValue('input[data-reactid=".1.1.0.0.1.6.1.0"]',arg1+'\t0202PM');
  });

  this.Then(/^I see input end date and I set it with value "([^"]*)"$/, function (arg1) {
      browser.addValue('input[data-reactid=".1.1.0.0.1.6.2.0"]',arg1+"\t0202PM");
  });

  this.Then(/^I see dialog "([^"]*)" contain content "([^"]*)"$/, function (arg1, arg2) {
      browser.waitForExist('h4='+arg1,10000);
  });


}
