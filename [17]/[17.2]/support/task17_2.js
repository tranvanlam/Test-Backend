module.exports = function() {

    this.Given(/^I have visited localhost TaskReport$/, function () {
      browser.url('http://192.168.1.123:4000/task-report');
    });

    this.Then(/^I see page task report$/, function () {
      browser.waitForExist('span=kết quả',10000);
    });


    this.Then(/^I see button "([^"]*)"$/, function (arg1) {
      browser.waitForExist('button='+arg1);

    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.click('button='+arg1);
    });

    this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
        browser.waitForExist('h4='+arg1);
    });


}
