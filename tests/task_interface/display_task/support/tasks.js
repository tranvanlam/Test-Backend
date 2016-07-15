module.exports = function() {
	this.Given(/^visited task backend$/, function () {
		browser.url('http://192.168.1.123:4000/task');
	});
	
	//5
	this.When(/^choose number five "([^"]*)"$/, function (num) {
		browser.waitForExist('select[data-reactid=".0.1.2.1.3"]',10000);
		browser.click('select[data-reactid=".0.1.2.1.3"]');
		browser.click('option[data-reactid=".0.1.2.1.3.$5"]');
  	});

  	this.Then(/^see number of tasks in screen is five$/, function () {
		var n = 295;
		expect(browser.getElementSize('tbody[data-reactid=".0.1.2.1.2.1.1.0.1"]', 'height')).toEqual(n);
  	});

  	//10
  	this.When(/^choose number ten "([^"]*)"$/, function (num) {
		browser.waitForExist('select[data-reactid=".0.1.2.1.3"]',10000);
		browser.click('select[data-reactid=".0.1.2.1.3"]');
		browser.click('option[data-reactid=".0.1.2.1.3.$10"]');
  	});

  	this.Then(/^see number of tasks in screen is ten$/, function () {
		var n = 590;
		expect(browser.getElementSize('tbody[data-reactid=".0.1.2.1.2.1.1.0.1"]', 'height')).toEqual(n);
  	});


};
