module.exports = function() {

    this.Given(/^I have visited localhost DepositHistory$/, function () {
      browser.url('http://192.168.1.123:4000/deposit-history');
    });

    this.Then(/^I see table$/, function (table) {
      table.hashes().forEach((arg)=>{
        browser.waitForExist('p='+arg.name,10000);
        browser.waitForExist('p='+arg.phone_number,10000);
        browser.waitForExist('p='+arg.type_account,10000);
        browser.waitForExist('p='+arg.amount,10000);
      });

    });

    this.Then(/^I see the first user and i click it$/, function () {
        browser.click('tr[data-reactid=".0.1.2.1.2.1.1.0.1.$0"]');
        browser.click('tr[data-reactid=".0.1.2.1.2.1.1.0.1.$0"]');
    });

    this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
      browser.waitForExist('h4='+arg1,10000);
    });
  
    this.Then(/^I see textfield "([^"]*)"$/, function (arg1) {
      browser.waitForExist('div='+arg1,10000);
   });

    this.Then(/^I select option "([^"]*)" with id "([^"]*)"$/, function (arg1,arg2) {
      browser.waitForExist('select[data-reactid="'+arg2+'"]',10000);
      browser.click('select[data-reactid="'+arg2+'"]',10000);

      if(arg1!=".2.1.0.0.1.2.1.0.0" && arg1!=".2.1.0.0.1.5.1.0.0")
        browser.click('option='+arg1);
      else  
        browser.click('option[data-reactid="'+arg1+'"]');

    });

    this.Then(/^I set input with value "([^"]*)" with id "([^"]*)"$/, function (arg1, arg2) {
      browser.waitForExist('input[data-reactid="'+arg2+'"]',10000);
      //browser.clearElement('input[data-reactid="'+arg2+'"]');
      if(arg2==".2.1.0.0.1.6.1.0")
       browser.addValue('input[data-reactid="'+arg2+'"]',arg1);
      else 
       browser.setValue('input[data-reactid="'+arg2+'"]',arg1);
    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.waitForExist('button='+arg1,10000);
      browser.click('button='+arg1);
    });

}
