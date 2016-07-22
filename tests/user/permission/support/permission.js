module.exports = function() {
	this.Given(/^visited backend$/, function () {
		browser.url('http://192.168.1.123:4000');
	});
	this.Then(/^I click admin "([^"]*)" and I click back end user "([^"]*)"$/, function (admin, b_user) {
	    browser.waitForExist('span='+ admin, 10000);
	   	browser.click('span='+ admin);
	   	browser.waitForExist('a='+ b_user, 10000);
	   	browser.click('a='+ b_user);
  	});
  	this.Then(/^I see collection user and I click user lgp "([^"]*)"$/, function (user) {
	    browser.waitForExist('a[data-reactid=".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"]', 10000);
	    browser.click('a[data-reactid=".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"]');
  	});
  	this.Then(/^I see user name lgp "([^"]*)" and I click edit "([^"]*)"$/, function (user, edit) {
	    browser.waitForExist('span='+ user, 10000);
	    browser.click('a='+ edit);
  	});
  	this.Then(/^I click save "([^"]*)"$/, function (save) {
	    browser.click('button='+ save);
  	});
  	this.Then(/^I see accept and I click accept "([^"]*)"$/, function (accept) {
	    browser.waitForExist('h4='+ accept, 10000);
	    browser.click('button='+ accept);
  	});
  	this.Then(/^I see permission deny in page "([^"]*)"$/, function (permission) {
	    browser.waitForExist('span='+ permission, 10000);
  	});

  	//Test app setting uncheck to read
  	this.Then(/^I see app setting "([^"]*)"$/, function (setting) {
	    browser.waitForExist('div='+setting, 10000);
  	});
  	this.Then(/^I uncheck permission "([^"]*)"$/, function (read) {
	    if (browser.element('input[id='+read+']').isSelected()){
     		browser.element('input[id='+read+']').click();
		}
  	});
  	this.Then(/^I go to website with domain "([^"]*)"$/, function (domain) {
	    browser.url(domain);
  	});

  	//Test app setting check to read
  	this.Then(/^I check permission "([^"]*)"$/, function (read) {
	    if (!browser.element('input[id='+read+']').isSelected()){
     		browser.element('input[id='+read+']').click();
		}
  	});
  	this.Then(/^I see app setting in page "([^"]*)"$/, function (setting) {
	    browser.waitForExist('small='+ setting, 10000);
  	});

  	//Test app setting uncheck to write
  	this.Then(/^I click update information "([^"]*)"$/, function (update) {
	    browser.waitForExist('button='+ update, 10000);
	    browser.click('button='+ update);
  	});
  	this.Then(/^I see dialog error permission deny "([^"]*)"$/, function (error) {
	    browser.waitForExist('div='+ error, 10000);
  	});

  	//Test app setting check to write
  	this.Then(/^I see dialog success "([^"]*)"$/, function (success) {
	    browser.waitForExist('div='+ success, 10000);
  	});

  	//Test backend setting uncheck to read

  	//Test backend setting check to read
  	this.Then(/^I see backend setting in page "([^"]*)"$/, function (setting) {
	    browser.waitForExist('small='+ setting, 10000);
  	});

  	//Test backend user check read
  	this.Then(/^I see collection user in page "([^"]*)"$/, function (collection) {
	    browser.waitForExist('h3='+ collection, 10000);
  	});

  	//Test task check read
  	this.Then(/^I see table task "([^"]*)"$/, function (sv, table) {
	    browser.waitForExist('p='+ sv, 10000);
  	});

  	//Test task uncheck write
  	this.Then(/^I click task "([^"]*)"$/, function (task) {
		browser.click('td='+ task);
		browser.click('td='+ task);
  	});
  	this.Then(/^I see information task "([^"]*)"$/, function (inf) {
	    browser.waitForExist('h4='+inf, 10000);
  	});
  	this.Then(/^I click complete task "([^"]*)"$/, function (complete) {
	    browser.click('button='+ complete);
  	});

  	//Test schedule check read
  	this.Then(/^I see table schedule "([^"]*)"$/, function (sv, table) {
	    browser.waitForExist('p='+ sv, 10000);
  	});

  	//Test schedule check write
  	this.Then(/^I click schedule with status "([^"]*)"$/, function (status) {
	    browser.click('td='+ status);
	    browser.click('td='+ status);
  	});
	this.Then(/^I see dialog and I click stop schedule "([^"]*)"$/, function (stop) {
	    browser.waitForExist('button='+ stop, 10000);
	    browser.click('button='+ stop);
  	});

	//Test asker check read
	this.Then(/^I see table asker "([^"]*)"$/, function (arg1, table) {
	    browser.waitForExist('p='+ arg1, 10000);
 	});

 	//Test asker uncheck write
 	this.Then(/^I click asker with status "([^"]*)"$/, function (time_build) {
	    browser.click('td='+ time_build);
	    browser.click('td='+ time_build);
  	});
  	this.Then(/^I see dialog asker detail "([^"]*)"$/, function (asker_detail) {
	    browser.waitForExist('h4='+asker_detail, 10000);
 	});
 	this.Then(/^I click button activate "([^"]*)"$/, function (activate) {
	    browser.click('button='+activate);
  	});

 	//Test asker ucheck delete
 	this.Then(/^I click tab other "([^"]*)"$/, function (other) {
	    browser.click('a='+ other);
  	});
  	this.Then(/^I not see button delete account "([^"]*)"$/, function (arg1) {
	    
  	});

  	//Test asker check delete
  	this.Then(/^I see button delete account "([^"]*)"$/, function (del) {
	    browser.waitForExist('button='+ del, 10000);
  	});

  	//Test tasker check read
  	this.Then(/^I see table tasker "([^"]*)"$/, function (name, table) {
	    browser.waitForExist('p='+ name, 10000);
  	});
  	this.Then(/^I click tasker with status "([^"]*)"$/, function (status) {
  		browser.waitForExist('td='+ status, 10000);
	    browser.click('td='+ status);
	    browser.click('td='+ status);
  	});
  	this.Then(/^I see general information "([^"]*)" and I click "([^"]*)"$/, function (arg1, arg2) {
	    browser.waitForExist('h4='+ arg1, 10000);
	    browser.click('a='+ arg2);
  	});

  	//Test user report check read
  	this.Then(/^I see table user report "([^"]*)"$/, function (arg1, table) {
	    browser.waitForExist('p='+ arg1, 10000);
  	});
  	this.Then(/^I see table task report "([^"]*)"$/, function (arg1, table) {
	    browser.waitForExist('p='+ arg1, 10000);
  	});
  	this.Then(/^I see list phone number "([^"]*)"$/, function (list) {
	    browser.waitForExist('small='+ list, 10000);
  	});

  	//Test user report uncheck write
  	this.Then(/^I set phone number of input "([^"]*)"$/, function (number) {
	    browser.setValue('input[id="phoneNumber"]',number);
  	});
  	this.Then(/^I click add "([^"]*)"$/, function (add) {
	    browser.click('button='+ add);
  	});

  	//Test user report check write
  	this.Then(/^I see phone number in list "([^"]*)"$/, function (number) {
	    browser.waitForExist('span='+ number, 10000);
  	});

  	//Test user report uncheck delete
  	this.Then(/^I click delete "([^"]*)"$/, function (del) {
	    browser.click('button='+ del);
  	});

  	//Test user report check delete
  	this.Then(/^I not see phone number in list$/, function () {
    
	});

	//Test service check read
	this.Then(/^I see table service "([^"]*)"$/, function (arg1, table) {
    	browser.waitForExist('p='+ arg1, 10000);
    });
    this.Then(/^I see table sub service "([^"]*)"$/, function (arg1, table) {
	    browser.waitForExist('p='+ arg1, 10000);
  	});

    //Test service uncheck write
    this.Then(/^I click add service "([^"]*)"$/, function (add) {
	    browser.click('button='+ add);
  	});
  	this.Then(/^I see service information "([^"]*)"$/, function (service) {
	    browser.waitForExist('h4='+service, 10000);
  	});
  	this.Then(/^I click general information "([^"]*)"$/, function (inf) {
	    browser.click('a='+inf);
  	});
  	this.Then(/^I create "([^"]*)"$/, function (create) {
	    browser.waitForExist('button='+ create, 10000);
	    browser.click('button='+ create);
  	});

  	//Test activation code check read
  	this.Then(/^I see table activate code "([^"]*)"$/, function (arg1, table) {
	    browser.waitForExist('p='+ arg1, 10000);
  	});

  	//Test promotion code check read
  	this.Then(/^I see table promotion code "([^"]*)"$/, function (arg1, table) {
	    browser.waitForExist('p='+ arg1, 10000);
  	});

  	//Test promotion code uncheck write
  	this.Then(/^I click add code "([^"]*)"$/, function (add_code) {
	    browser.click('button='+ add_code);
  	});
  	this.Then(/^I see dialog "([^"]*)"$/, function (arg1) {
	    browser.waitForExist('h4='+ arg1, 10000);
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
	this.Then(/^I see textfield "([^"]*)"$/, function (arg1) {
		browser.waitForExist('div='+arg1,10000);
	});
	this.Then(/^I click create "([^"]*)"$/, function (create) {
	    browser.click('button='+ create);
  	});

	//Test deposit uncheck read
	this.Then(/^I click tasker with time build "([^"]*)"$/, function (time) {
	    browser.waitForExist('td='+ time, 10000);
	    browser.click('td='+ time);
	    browser.click('td='+ time);
  	});
  	this.Then(/^I not see element deposit "([^"]*)"$/, function (arg1) {
	    if (browser.element('a='+ arg1).isExisting()){
	    	console.log('Error');
	    	browser.waitForExist('a= not Existing');
	    }
  	});

  	//Test deposit check read
  	this.Then(/^I see element deposit "([^"]*)"$/, function (arg1) {
	    if (!browser.element('a='+ arg1).isExisting()){
	    	console.log('Error');
	    	browser.waitForExist('a= not Existing');
	    }
  	});

  	//Test company check read
  	this.Then(/^I see table company "([^"]*)"$/, function (arg1, table) {
    	browser.waitForExist('a='+ arg1, 10000);
    });

  	//Test company uncheck write
  	this.Then(/^I click company with status "([^"]*)"$/, function (status) {
    	browser.click('td='+ status);
    	browser.click('td='+ status);
    });
    this.Then(/^I see dialog information "([^"]*)"$/, function (arg1) {
    	browser.waitForExist('h4='+ arg1, 10000);
    });
    this.Then(/^I click verify company "([^"]*)"$/, function (verify) {
    	browser.click('button='+ verify);
    });

    //Test change address uncheck write
    this.Then(/^I click address$/, function () {
    	browser.click('input[id="formHorizontalAddress"]');
    });
    this.Then(/^I set value "([^"]*)"$/, function (address) {
    	browser.waitForExist('h4=Địa chỉ',10000);
    	browser.waitForExist('span[data-reactid=".2.1.0.0.1.0.1.0.1"]', 10000);
  	});







	













};


