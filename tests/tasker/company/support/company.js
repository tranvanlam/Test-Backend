module.exports = function() {
	this.Given(/^visited backend$/, function () {
		browser.url('http://192.168.1.123:4000');
	});
	this.When(/^click tasker "([^"]*)"$/, function (tasker) {
		browser.waitForExist('span='+tasker, 10000);
	    browser.click('span='+tasker);
	});
	this.When(/^click company table "([^"]*)"$/, function (company) {
		browser.waitForExist('a='+company, 10000);
		browser.click('a='+ company);
	});
	this.Then(/^I click company list "([^"]*)"$/, function (company) {
		browser.waitForExist('a='+company, 10000);
		browser.click('a='+ company);
	});
	this.Then(/^I see table company$/, function (table) {
		browser.waitForExist('p=Tên', 10000);
		table.hashes().forEach((company) => {
		    browser.waitForExist('td='+ company.name);
		    browser.waitForExist('td='+ company.phone_number);
		    browser.waitForExist('td='+ company.status);
		    browser.waitForExist('td='+ company.time_build);
		});
	});

	//create company with set phone number
	this.Then(/^I click create company "([^"]*)"$/, function (create) {
	    browser.waitForExist('a='+ create,10000);
	    browser.click('a='+ create);
  	});
  	this.Then(/^I set phone number representative company "([^"]*)"$/, function (phone) {
	    browser.waitForExist('label=Nhập số điện thoại tài khoản công ty',10000);
	    browser.addValue('input[data-reactid=".1.1.2.0.1.0.0:0.0.1.0.1"]', phone);
	    browser.keys('Enter');
  	});
  	this.Then(/^I see table$/, function (table) {
	    browser.waitForExist('small=Tài khoản công ty', 10000);
	    table.hashes().forEach((re_company) =>{
	    	browser.waitForExist('td='+ re_company.name);
	    	browser.waitForExist('td='+ re_company.phone_number);
	    	browser.waitForExist('td='+ re_company.status);
	    });
  	});
  	this.Then(/^I click choose tasker "([^"]*)"$/, function (choose_tasker) {
	   	browser.click('span='+choose_tasker);
  	});
  	this.Then(/^I set phone number tasker exist with tasker greater than one "([^"]*)" "([^"]*)"$/, function (num_1, num_2) {
	    browser.waitForExist('label=Nhập số điện thoại tài khoản nhân viên', 10000);
	    browser.setValue('input[data-reactid=".1.1.2.0.1.0.0:1.0.1.0.1"]', num_1);
	    browser.keys('Enter');
	    browser.setValue('input[data-reactid=".1.1.2.0.1.0.0:1.0.1.0.1"]', num_2);
	    browser.keys('Enter');
  	});
  	this.Then(/^I see table list employee$/, function (table) {
	    browser.waitForExist('small=Tài khoản nhân viên', 10000);
	    table.hashes().forEach((employee) =>{
	    	browser.waitForExist('td='+ employee.name);
	    	browser.waitForExist('td='+ employee.phone_number);
	    	browser.waitForExist('td='+ employee.status);
	    });
  	});
  	this.Then(/^I click accept in page "([^"]*)"$/, function (accept) {
	    browser.click('span='+ accept);
  	});
  	this.Then(/^I see table representative company:$/, function (table) {
	    browser.waitForExist('small=Tài khoản công ty', 10000);
	    table.hashes().forEach((re_company) =>{
	    	browser.waitForExist('td='+ re_company.name);
	    	browser.waitForExist('td='+ re_company.phone_number);
	    	browser.waitForExist('td='+ re_company.status);
	    });
  	});
  	this.Then(/^I see list employee:$/, function (table) {
	    browser.waitForExist('small=Tài khoản nhân viên', 10000);
	    table.hashes().forEach((employee) =>{
	    	browser.waitForExist('td='+ employee.name);
	    	browser.waitForExist('td='+ employee.phone_number);
	    	browser.waitForExist('td='+ employee.status);
	    });
  	});
  	this.Then(/^I click complete "([^"]*)"$/, function (complete) {
    browser.click('button='+ complete);
  	});
  	this.Then(/^I see dialog accept and I click accept "([^"]*)"$/, function (accept) {
	    browser.waitForExist('h4='+ accept, 10000);
	    browser.click('button='+ accept);
  	});
  	this.Then(/^I see dialog success "([^"]*)"$/, function (success) {
	    browser.waitForExist('h4='+ success,10000);
  	});

  	//Test create with company exist
  	this.Then(/^I see dialog error "([^"]*)"$/, function (error) {
	    browser.waitForExist('div='+ error);
  	});

  	//Test delete company
  	this.Then(/^I click company "([^"]*)" "([^"]*)"$/, function (arg1, num) {
	    browser.click('td='+ num);
	    browser.click('td='+ num);
  	});
  	this.Then(/^I see information company "([^"]*)"$/, function (inf) {
	    browser.waitForExist('h4='+ inf, 10000);
  	});
  	this.Then(/^I click remove company "([^"]*)"$/, function (remove) {
    	browser.click('button='+ remove);
  	});

  	//Create company with phone number not exist
  	this.Then(/^I see error "([^"]*)"$/, function (error) {
	    browser.waitForExist('label='+error, 10000);
  	});

  	//Create company with greater than one representative
  	this.Then(/^I click show list account$/, function () {
	    browser.click('svg[data-reactid=".1.1.2.0.1.0.0:0.0.2.0"]');
  	});
  	this.Then(/^I see table tasker$/, function (table) {
	    browser.waitForExist('h3=Choose Tasker',10000);
	    table.hashes().forEach((tasker) =>{
	    	browser.waitForExist('td='+ tasker.name);
	    	browser.waitForExist('td='+ tasker.phone_number);
	    	browser.waitForExist('td='+ tasker.service);
	    	browser.waitForExist('td='+ tasker.status);
	    	browser.waitForExist('td='+ tasker.time_build);
	    });
  	});
  	this.Then(/^I check two representative$/, function () {
	    browser.click('input[data-reactid=".4.0.2.0.1.2.1.1.0.1.$0.0.0"]');
	    browser.click('input[data-reactid=".4.0.2.0.1.2.1.1.0.1.$1.0.0"]');
  	});

  	//
  	this.Then(/^I set phone number tasker exist with tasker is representative of other company "([^"]*)"$/, function (num) {
	    browser.waitForExist('label=Nhập số điện thoại tài khoản nhân viên', 10000);
	    browser.setValue('input[data-reactid=".1.1.2.0.1.0.0:1.0.1.0.1"]', num);
	    browser.keys('Enter');
  	});
  	this.Then(/^I click list employee "([^"]*)"$/, function (employee) {
	    browser.click('a='+ employee);
  	});
  	this.Then(/^I see list employee$/, function (table) {
	    table.hashes().forEach((tasker) =>{
	    	browser.waitForExist('td='+ tasker.name);
	    	browser.waitForExist('td='+ tasker.phone_number);
	    	browser.waitForExist('td='+ tasker.status);
	    	browser.waitForExist('td='+ tasker.time_build);
	    });
  	});

  	//Test company with change list employee and allow employees to receive their own jobs
  	this.Then(/^I click change list employee "([^"]*)"$/, function (change) {
	    browser.click('button='+ change);
  	});
  	this.Then(/^i see update company "([^"]*)"$/, function (label) {
	    browser.waitForExist('a='+ label,10000);
  	});
  	this.Then(/^I check checkbox allow employees to receive their own jobs$/, function () {
	    browser.click('input[data-reactid=".1.1.2.0.1.0.0:1.0.2.0.0.0"]');
  	});
  	this.Then(/^I set phone number tasker exist "([^"]*)"$/, function (num) {
	    browser.setValue('input[id="PhoneTextField"]', num);
	    browser.keys('Enter');
  	});
  	this.Then(/^I click close "([^"]*)"$/, function (close) {
	    browser.click('button='+ close);
 	});
  	this.Then(/^I go to task backend$/, function () {
	    browser.url('http://192.168.1.123:4000/task');
  	});
  	this.Then(/^I see task$/, function (table) {
  		browser.waitForExist('p=Dịch vụ', 10000);
	    table.hashes().forEach((task)=>{
	    	browser.waitForExist('td='+ task.service);
	    	browser.waitForExist('td='+ task.name);
	    	browser.waitForExist('td='+ task.phone_number);
	    	browser.waitForExist('td='+ task.address);
	    	browser.waitForExist('td='+ task.time_post);
	    	browser.waitForExist('td='+ task.status);
	    });
  	});
  	this.Then(/^I click task of "([^"]*)" "([^"]*)"$/, function (arg1, arg2) {
	    browser.click('td='+ arg2);
	    browser.click('td='+ arg2);
  	});
  	this.Then(/^I click element add tasker "([^"]*)"$/, function (tag) {
	    browser.waitForExist('a='+ tag, 10000);
	    browser.click('a='+ tag);
  	});
  	this.Then(/^I set phone number tasker is employee of company "([^"]*)"$/, function (phone) {
	    browser.waitForVisible('input[data-reactid=".3.1.0.0.1.1.1.3.0.0.0.0"]', 10000);
	    browser.addValue('input[data-reactid=".3.1.0.0.1.1.1.3.0.0.0.0"]', phone);
  	});
  	this.Then(/^I add "([^"]*)"$/, function (add) {
	    browser.click('button='+ add);
  	});

  	//block company
  	this.Then(/^I click block company "([^"]*)"$/, function (block) {
	    browser.click('button='+ block);
  	});
  	this.Then(/^I click close dialog "([^"]*)"$/, function (arg1) {
	    browser.click('button='+ arg1);
  	});
  	this.Then(/^I see table list company$/, function (table) {
		browser.waitForExist('p=Tên', 10000);
		table.hashes().forEach((company) => {
		    browser.waitForExist('td='+ company.name);
		    browser.waitForExist('td='+ company.phone_number);
		    expect(browser.getText('td[data-reactid=".1.1.2.0.1.0.2.2.1.1.0.1.$1.1:$4"]')).toEqual(company.status);
		    browser.waitForExist('td='+ company.time_build);
		});
	});
  	this.Then(/^I click verify company "([^"]*)"$/, function (verify) {
	    browser.click('button='+ verify);
  	});







};
