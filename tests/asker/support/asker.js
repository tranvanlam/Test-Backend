module.exports = function() {
	this.Given(/^visited asker backend$/, function () {
		browser.url('http://192.168.1.123:4000/asker');
	});
	
	this.Then(/^I click choose asker "([^"]*)" "([^"]*)"$/, function (id, time) {
	    browser.waitForExist('td='+ id, 10000);
	    browser.click('td='+ time);
	    browser.click('td='+ time);
  	});

  	//Test element general informaion
	this.Then(/^I click choose general information "([^"]*)"$/, function (inf) {
	    browser.waitForExist('a='+ inf, 10000);
	    browser.click('a='+ inf);
  	});
	this.Then(/^I see all information including name, phone number, address "([^"]*)" "([^"]*)" "([^"]*)"$/, 
		function (name, phone_number, address) {
	    browser.waitForExist('strong=Tên:', 10000);
	    browser.waitForExist('div='+ name);
	    browser.waitForExist('strong=Số điện thoại:');
	    browser.waitForExist('div='+ phone_number);
	    browser.waitForExist('strong=Địa chỉ:');
	    browser.waitForExist('div='+ address);
  	});
	//Test element history
	this.Then(/^I click choose history "([^"]*)"$/, function (history) {
	    browser.waitForExist('a='+history, 10000);
	    browser.click('a='+history);
  	});

  	this.Then(/^I see table works$/, function (table) {
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
 
  	//Test element account
  	this.Then(/^I click choose account "([^"]*)"$/, function (account) {
	    browser.waitForExist('a='+ account);
	    browser.click('a='+ account);
 	});

 	this.Then(/^I see account name "([^"]*)"$/, function (name) {
    	browser.waitForExist('div='+ name, 10000);
  	});
  	this.Then(/^I see main account "([^"]*)" "([^"]*)"$/, function (main, arg) {
	    browser.waitForExist('div='+ main);
	    browser.waitForExist('div='+ arg);
  	});
  	this.Then(/^I see free available account "([^"]*)" "([^"]*)"$/, function (available, arg) {
	    browser.waitForExist('div='+ available);
	    browser.waitForExist('div='+ arg);
  	});

  	//Test element other
  	this.Then(/^I click choose other "([^"]*)"$/, function (other) {
	    browser.waitForExist('a='+ other);
	    browser.click('a='+ other);
  	});

  	//Test block and unclock asker
  	this.Then(/^I see table with asker "([^"]*)"$/, function (arg1, table) {
	    table.hashes().forEach((asker) =>{
	    	browser.waitForExist('td='+ asker.id, 10000);
	    	browser.waitForExist('td='+ asker.name);
	    	browser.waitForExist('td='+ asker.phone_number);
	    	browser.waitForExist('td='+ asker.status);
	    	browser.waitForExist('td='+ asker.time_build);
	    });
  	});
  	this.When(/^I click choose block "([^"]*)"$/, function (block) {
	    browser.waitForExist('h4=Asker Detail',10000);
	    browser.click('button='+ block);
  	});
  	this.Then(/^I see dialog block account "([^"]*)"$/, function (dialog) {
	    browser.waitForExist('h4='+ dialog,10000);
  	});
  	this.Then(/^I set value of textfiled reason "([^"]*)"$/, function (reason) {
  		//browser.waitForEnable('input[placeholder="Lý do"]');
	    browser.setValue('input[placeholder="Lý do"]', reason);
  	});
  	this.Then(/^I click block asker "([^"]*)"$/, function (block) {
		browser.click('button[data-reactid=".3.1.0.0.2.0"]');
  	});
  	this.Then(/^I see dialog accept and click accept "([^"]*)"$/, function (accept) {
	    browser.waitForExist('h4='+ accept, 10000);
	    browser.click('button='+ accept);
  	});
  	this.Then(/^I see dialog success "([^"]*)"$/, function (success) {
	    browser.waitForExist('h4='+ success, 10000);
  	});
  	this.Then(/^I click close "([^"]*)"$/, function (close) {
	    browser.click('button='+ close);
  	});
  	this.Then(/^I see table with asker "([^"]*)" status is locked$/, function (arg1, table) {
    	table.hashes().forEach((asker) =>{
	    	browser.waitForExist('td='+ asker.id, 10000);
	    	browser.waitForExist('td='+ asker.name);
	    	browser.waitForExist('td='+ asker.phone_number);
	    	browser.waitForExist('td='+ asker.status);
	    	browser.waitForExist('td='+ asker.time_build);
	    });
  	});

  	//unclock
  	this.When(/^I click choose activate "([^"]*)"$/, function(activate){
  		browser.click('button='+activate);
  	});

};
