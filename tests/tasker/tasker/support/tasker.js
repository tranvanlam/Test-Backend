module.exports = function() {
	this.Given(/^visited backend$/, function () {
		browser.url('http://192.168.1.123:4000');
	});
	this.When(/^click tasker "([^"]*)"$/, function (tasker) {
	    browser.waitForExist('span='+tasker, 10000);
	    browser.click('span='+tasker);
  	});
  	this.When(/^click tasker table "([^"]*)"$/, function (tasker) {
	    browser.waitForExist('a='+ tasker, 10000);
	    browser.click('a[data-reactid=".0.0.0.0.1.0.3.1.$0.0"]');
  	});
	this.Then(/^I see table tasker$/, function (table) {
		browser.waitForExist('p=Tên', 10000);
		table.hashes().forEach((tasker) => {
		    browser.waitForExist('td='+ tasker.name);
		    browser.waitForExist('td='+ tasker.phone_number);
		    browser.waitForExist('td='+ tasker.service);
		    browser.waitForExist('td='+ tasker.status);
		    browser.waitForExist('td='+ tasker.time_build);
		});
  	});
	//Test general information
	this.Given(/^visited tasker backend$/, function () {
	    browser.url('http://192.168.1.123:4000/tasker');
  	});
  	this.Then(/^I click choose tasker "([^"]*)" "([^"]*)" "([^"]*)"$/, function (name, id, time_build) {
	    browser.waitForExist('td='+ id, 10000);
	    browser.click('td='+ time_build);
	    browser.click('td='+ time_build);
  	});
  	this.Then(/^I click choose general information "([^"]*)"$/, function (general) {
	    browser.waitForExist('a='+general,10000);
	    browser.click('a='+ general);
  	});
  	this.Then(/^I see information name and phone number "([^"]*)" "([^"]*)"$/, function (name, phone_number) {
	    browser.waitForExist('p='+name, 10000);
	    browser.waitForExist('span='+ phone_number);
  	});
  	//Test update personal information
  	this.Then(/^I set value email "([^"]*)"$/, function (email) {
	    browser.setValue('input[id="formHorizontalEmail"]', email);
  	});
  	this.Then(/^I set value address "([^"]*)"$/, function (address) {
	    browser.setValue('input[id="formHorizontalAddress"]', address)
  	});
  	this.Then(/^I set value introdue "([^"]*)"$/, function (introdue) {
	    browser.setValue('input[id="formHorizontalIntroduction"]', introdue);
  	});
  	this.Then(/^I click update personal information "([^"]*)"$/, function (update) {
	    browser.click('button='+ update);
  	});
  	this.Then(/^I see dialog accept and I click accept "([^"]*)"$/, function (accept) {
	    browser.waitForExist('h4='+ accept);
	    browser.click('button='+ accept);
  	});
  	this.Then(/^I see dialog success "([^"]*)"$/, function (success) {
	    browser.waitForExist('h4='+ success, 10000);
  	});
  	this.Then(/^I see dialog error "([^"]*)"$/, function (error) {
	    browser.waitForExist('div='+ error, 10000);
  	});

  	//Test update service
  	this.Then(/^I click choose service "([^"]*)"$/, function (service) {
	    browser.waitForExist('a='+ service,10000);
	    browser.click('a='+ service);
  	});
  	this.Then(/^I click tick service "([^"]*)"$/, function (service) {
	    browser.waitForExist('span='+ service, 10000);
	    browser.click('input[id="tiZDbhFpejQHJxtgL"]');
  	});
  	this.Then(/^I click update service "([^"]*)"$/, function (update) {
	    browser.click('button='+ update);
  	});
  	this.Then(/^I see dialog accept and click accept "([^"]*)"$/, function (accept) {
  		browser.waitForExist('h4='+accept,10000);
	    browser.click('button='+ accept);
  	});
  	this.Then(/^I reload asker and see table$/, function (table) {
	    browser.url('http://192.168.1.123:4000/tasker');
	    browser.waitForExist('p=Tên', 10000);
		table.hashes().forEach((tasker) => {
		    browser.waitForExist('td='+ tasker.name);
		    browser.waitForExist('td='+ tasker.phone_number);
		    browser.waitForExist('td='+ tasker.service);
		    browser.waitForExist('td='+ tasker.status);
		    browser.waitForExist('td='+ tasker.time_build);
		});
  	});

  	//test element work history
  	this.Then(/^I click choose work history "([^"]*)"$/, function (history) {
	    browser.waitForExist('a='+ history,10000);
	    browser.click('a='+ history);
  	});
  	this.Then(/^I see table work history$/, function (table) {
	    browser.waitForExist('span=Dịch vụ', 10000);
		table.hashes().forEach((work) => {
		    browser.waitForExist('td='+ work.service);
		    browser.waitForExist('td='+ work.time_work);
		    browser.waitForExist('td='+ work.address);
		    browser.waitForExist('td='+ work.price);
		    browser.waitForExist('td='+ work.time_post);
		    browser.waitForExist('td='+ work.status);
		});
  	});

  	//test element recharge
  	this.Then(/^I click choose recharge "([^"]*)"$/, function (recharge) {
	    browser.waitForExist('a='+ recharge, 10000);
	    browser.click('a='+ recharge);
  	});
  	this.Then(/^I see name and phone number "([^"]*)"$/, function (name) {
	    browser.waitForExist('div='+ name);
  	});
  	this.Then(/^I see main account with value "([^"]*)"$/, function (arg1) {
	    browser.waitForExist('div='+ arg1);
  	});
  	this.Then(/^I see free available account with value "([^"]*)"$/, function (arg1) {
	    browser.waitForExist('div='+ arg1);
  	});
  	this.Then(/^I click choose main account in scroll view "([^"]*)"$/, function (main) {
	    browser.click('option='+ main);
  	});
  	this.Then(/^I click choose cash "([^"]*)"$/, function (cash) {
	    browser.click('option='+ cash);
  	});
  	this.Then(/^I set value amount of money "([^"]*)"$/, function (money) {
	    browser.setValue('input[data-reactid=".1.1.0.0.1.0.1.3.0.1.1:$0.0.2.0"]', money);
  	});
  	this.Then(/^I set date$/, function () {
	    const date = new Date().toLocaleDateString();

		browser.addValue('input[data-reactid=".1.1.0.0.1.0.1.3.0.1.1:$0.1.1.0"]', date);

  	});
  	this.Then(/^I click recharge "([^"]*)"$/, function (recharge) {
	    browser.click('button='+ recharge);
  	});

  	//Test block tasker
  	this.Then(/^I see table with tasker "([^"]*)"$/, function (arg1, table) {
	    table.hashes().forEach((tasker) =>{
	    	browser.waitForExist('td='+ tasker.name);
	    	browser.waitForExist('td='+ tasker.phone_number);
	    	browser.waitForExist('td='+ tasker.service);
	    	browser.waitForExist('td='+ tasker.status);
	    	browser.waitForExist('td='+ tasker.time_build);
	    });
  	});
  	this.When(/^I click choose block "([^"]*)"$/, function (block) {
	    browser.waitForExist('h4=Thông tin chi tiết',10000);
	    browser.click('button='+ block);
  	});
  	this.Then(/^I see dialog block account "([^"]*)"$/, function (dialog) {
	    browser.waitForExist('h4='+ dialog,10000);
  	});
  	this.Then(/^I set value of textfiled reason "([^"]*)"$/, function (reason) {
  		//browser.waitForEnable('input[placeholder="Lý do"]');
	    browser.setValue('input[placeholder="Lý do"]', reason);
  	});
  	this.Then(/^I click block tasker "([^"]*)"$/, function (block) {
		browser.click('button[data-reactid=".2.1.0.0.2.0"]');
  	});
  	
  	this.Then(/^I click close "([^"]*)"$/, function (close) {
	    browser.click('button='+ close);
  	});
  	this.Then(/^I see table with tasker "([^"]*)" status is locked$/, function (arg1, table) {
    	table.hashes().forEach((tasker) =>{
	    	browser.waitForExist('td='+ tasker.name);
	    	browser.waitForExist('td='+ tasker.phone_number);
	    	browser.waitForExist('td='+ tasker.service);
	    	browser.waitForExist('td='+ tasker.status);
	    	browser.waitForExist('td='+ tasker.time_build);
	    });
  	});
  	//unclock
  	this.When(/^I click choose activate "([^"]*)"$/, function(activate){
  		browser.click('button='+activate);
  	});

};
