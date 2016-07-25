module.exports = function() {

    this.Given(/^I have visited localhost SendNotification$/, function () {
      browser.url('http://192.168.1.123:4000/send-notification');
    });
    this.Then(/^I see page send notification$/, function () {
      browser.waitForExist('button=Send Notification To All Asker',10000);      
    });
    this.Then(/^I click on title "([^"]*)"$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
      browser.click('a='+arg1);
    });

    this.Then(/^I see two button "([^"]*)" and "([^"]*)"$/, function (arg1, arg2) {
      browser.waitForExist('button=Send Notification To All Asker',10000);      
      browser.waitForExist('button=Send Notification To All Tasker',10000);      
    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.waitForExist('button='+arg1,10000);
      browser.click('button='+arg1);
    });

    this.Then(/^I see textfield "([^"]*)"$/, function (arg1) {
      browser.waitForExist('div='+arg1,10000);
    });

    this.Then(/^I enter input with value "([^"]*)" and id "([^"]*)"$/, function (arg1,arg2) {
      browser.setValue('input[data-reactid="'+arg2+'"]',arg1);
    });

    this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
      browser.waitForExist('h4='+arg1,10000);
    });
}
