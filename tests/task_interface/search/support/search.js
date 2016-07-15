module.exports = function() {
	this.Given(/^visited task backend$/, function () {
		browser.url('http://192.168.1.123:4000/task');
	});
	// time work
	this.When(/^set time work in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});

	this.Then(/^I see the task to find by time work "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});

	// name
	this.When(/^set name in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});
	this.Then(/^I see the task to find by name "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});

	// phone number
	this.When(/^set phone number in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});
	this.Then(/^I see the task to find by phone number "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});

	//address
	this.When(/^set address in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});
	this.Then(/^I see the task to find by address "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});

	//price-hours
	this.When(/^set price hours in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});
	this.Then(/^I see the task to find by price hours "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});

	//time post
	this.When(/^set time post in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});
	this.Then(/^I see the task to find by time post "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});

	//status
	this.When(/^set status in input search "([^"]*)"$/, function (time) {
		browser.waitForExist('input[id="formInlineName"]',10000);
		browser.setValue('input[id="formInlineName"]', time);
		browser.keys(['Enter']);
	});
	this.Then(/^I see the task to find by status "([^"]*)"$/, function (id) {
		browser.waitForExist('td='+ id);
	});




};
