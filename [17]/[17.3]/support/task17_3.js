module.exports = function() {

    this.Given(/^I have visited localhost UserReport$/, function () {
      browser.url('http://192.168.1.123:4000/user-report');
    });

    this.Then(/^I see page user report$/, function () {
      browser.waitForExist('span=kết quả',10000);
    });

    this.Then(/^I see button "([^"]*)"$/, function (arg1) {
      browser.waitForExist('button='+arg1);
    });

    this.Then(/^I click on button "([^"]*)"$/, function (arg1) {
      browser.click('button='+arg1);
    });

    this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
      browser.waitForExist('h4='+arg1,60000);
    });

    this.Then(/^I click title "([^"]*)"$/, function (arg1) {
      browser.click('a='+arg1);
    });

    this.Then(/^I check "([^"]*)" and "([^"]*)" is exist$/, function (arg1, arg2) {
      
      if (browser.element('span='+arg1).isExisting() && browser.element('span='+ arg2).isExisting() ){
        //ok
      }
      else if(!browser.element('span='+arg1).isExisting() && browser.element('span='+ arg2).isExisting()){
        browser.click('div[data-reactid=".0.1.2.4.1.$0.1.1.0.1"]');
        browser.setValue('input[data-reactid=".0.1.2.4.1.$0.1.1.0.1.1.0"]','A');
        browser.keys('Enter');
      }
      else if(browser.element('span='+arg1).isExisting() && !browser.element('span='+ arg2).isExisting()){
        browser.click('div[data-reactid=".0.1.2.4.1.$0.1.1.0.1"]');
        browser.setValue('input[data-reactid=".0.1.2.4.1.$0.1.1.0.1.1.0"]','T');
        browser.keys('Enter');
      }
      else if(!browser.element('span='+arg1).isExisting() && !browser.element('span='+ arg2).isExisting()){
        browser.click('div[data-reactid=".0.1.2.4.1.$0.1.1.0.1"]');
        browser.setValue('input[data-reactid=".0.1.2.4.1.$0.1.1.0.1.1.0"]','A');
        browser.keys('Enter');
        browser.setValue('input[data-reactid=".0.1.2.4.1.$0.1.1.0.1.1.0"]','T');
        browser.keys('Enter');
      }
    });

    this.Then(/^I check "([^"]*)" is exist$/, function (arg1) {
      

        if(arg1=="ASKER"){
          
          if (browser.element('span=TASKER').isExisting()) {
              browser.click('span[data-reactid=".0.1.2.4.1.$0.1.1.0.1.0:$value-1-TASKER.0"]');
          }
          
          if(!browser.element('span='+arg1).isExisting()) {
              browser.click('div[data-reactid=".0.1.2.4.1.$0.1.1.0.1"]');
              browser.setValue('input[data-reactid=".0.1.2.4.1.$0.1.1.0.1.1.0"]','A');
              browser.keys('Enter');
          }
        }
        else {

          if (browser.element('span=ASKER').isExisting()) {
              browser.click('span[data-reactid=".0.1.2.4.1.$0.1.1.0.1.0:$value-0-ASKER.0"]');
          }
          
          if(!browser.element('span='+arg1).isExisting()) {
              browser.click('div[data-reactid=".0.1.2.4.1.$0.1.1.0.1"]');
              browser.setValue('input[data-reactid=".0.1.2.4.1.$0.1.1.0.1.1.0"]','A');
              browser.keys('Enter');
          }

        }
    });

    this.Then(/^I check state "([^"]*)" is exist$/, function (arg1) {
      switch(arg1){
        case "ACTIVE":
            console.log("ACTIVE");    
            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-INACTIVE.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-INACTIVE.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-UNVERIFIED.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-UNVERIFIED.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-LOCKED.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-LOCKED.0"]');

            break;
        case "INACTIVE":
            console.log("INACTIVE");
            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-ACTIVE.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-ACTIVE.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-UNVERIFIED.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-UNVERIFIED.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-LOCKED.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-LOCKED.0"]');

            break;
        case "UNVERIFIED":
            console.log("UNVERIFIED");    
            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-ACTIVE.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-ACTIVE.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-INACTIVE.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-INACTIVE.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-LOCKED.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-1-LOCKED.0"]');
            break;
        case "LOCKED":
            console.log("LOCKED");
            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-ACTIVE.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-ACTIVE.0"]');
            
            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-INACTIVE.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-INACTIVE.0"]');

            browser.waitForExist('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-UNVERIFIED.0"]',10000);
            browser.click('span[data-reactid=".0.1.2.4.1.$0.2.1.0.1.0:$value-0-UNVERIFIED.0"]');

            break;
        default:
            console.log("hahaha");    
      }
   });



}
