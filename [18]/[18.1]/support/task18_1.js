module.exports = function() {

    this.Given(/^I have visited localhost UserActivation$/, function () {
      browser.url('http://192.168.1.123:4000/user-activation');
    });

    this.Then(/^I see table$/, function (table) {
      table.hashes().forEach((arg)=>{
        browser.waitForExist('p='+arg.phone_number,10000);
        browser.waitForExist('p='+arg.verification_codes,10000);
        browser.waitForExist('p='+arg.time_build,10000);
        browser.waitForExist('p='+arg.times_send,10000);
      });

    });


}
