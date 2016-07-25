module.exports = function() {

    this.Given(/^I have visited localhost TesterUser$/, function () {
      browser.url('http://192.168.1.123:4000/tester-user');
    });

    this.Then(/^I see title "([^"]*)"$/, function (arg1) {
      browser.waitForExist(arg1,10000);
    });

    this.Then(/^I enter new input with value "([^"]*)"$/, function (arg1) {
      browser.setValue('input[id="phoneNumber"]',arg1);
    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.click('button='+arg1)
    });

    this.Then(/^I see Success$/, function () {
    
    });

    this.Then(/^I remove first the phone number in list phone number$/, function () {
      browser.click('button[data-reactid=".0.1.2.0.2.$0//=10/=1$0/=010.1"]');
    });


    this.Then(/^I see Error$/, function () {
      browser.waitForExist('Error',20)
    });

}
