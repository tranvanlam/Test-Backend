module.exports = function() {

    this.Given(/^I have visited localhost DeleteUser$/, function () {
      browser.url('http://192.168.1.123:4000/delete-user');
    });

    this.Then(/^I see title "([^"]*)"$/, function (arg1) {
        browser.waitForExist(arg1,10000);
    });

    this.Then(/^I see input phone number$/, function () {
      browser.waitForExist('input[id=phoneNumber]',10000);
    });

    this.Then(/^I enter input with value "([^"]*)"$/, function (arg1) {
      browser.setValue('input[id=phoneNumber]',arg1);
    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.click('button='+arg1);
    });

    this.Then(/^I see Success$/, function () {

    });
   
    this.Then(/^I see Error$/, function () {
      browser.waitForExist('Error roi!',100);
    });

    this.Then(/^I see the first phone number$/, function () {
      browser.waitForExist('li[data-reactid=".0.1.2.0.2.$0//=10/=1$0/=010"]',10000);
    });

    this.Then(/^I delete it$/, function () {
      browser.click('button[data-reactid=".0.1.2.0.2.$0//=10/=1$0/=010.1"]');
    });

}
