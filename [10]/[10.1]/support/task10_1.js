module.exports = function() {

    this.Given(/^I have visited localhost task$/, function () {
      browser.url('http://192.168.1.123:4000/task');
    });

    this.Then(/^I see state waiting$/, function () {
      browser.waitForExist('div=WAITING',10000);
    });

    this.Then(/^I click state waiting$/, function () {
      browser.click('div=WAITING');
      browser.click('div=WAITING');
    });

    this.Then(/^I see and enter phone number input "([^"]*)"$/, function (arg1) {
        browser.waitForVisible('input[data-reactid=".3.1.0.0.1.1.1.3.0.0.0.0"]',10000);
        browser.setValue('input[data-reactid=".3.1.0.0.1.1.1.3.0.0.0.0"]', arg1);
    });

   this.Then(/^I submit value when click button "([^"]*)"$/, function (arg1) {
        browser.waitForVisible('button=Thêm',10000);
        browser.click('button=Thêm');
      });

   this.Then(/^I see state posted$/, function () {
      browser.waitForExist('div[data-reactid=".0.1.2.1.2.1.1.0.1.$3.1:$9.0"]',10000);
    });

    this.Then(/^I click state posted$/, function () {
      browser.click('div[data-reactid=".0.1.2.1.2.1.1.0.1.$3.1:$9.0"]');
      browser.click('div[data-reactid=".0.1.2.1.2.1.1.0.1.$3.1:$9.0"]');
    });
    
  this.Then(/^I see dialog Xac Nhan and click "([^"]*)"$/, function (arg1) {
      browser.waitForVisible('button='+arg1);
      browser.click('button='+arg1);
  });

   this.Then(/^I click on title Them Nguoi Nhan "([^"]*)"$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
      browser.click('a='+arg1);
    });

    this.Then(/^I see title "([^"]*)"$/, function (arg1) {
      browser.waitForExist('a='+arg1,10000);
      browser.click('a='+arg1);
    });

    this.When(/^I see table information$/, function (table) {
      table.hashes().forEach((inf)=>{
      browser.waitForExist('div='+inf.service,10000);
      browser.waitForExist('div='+inf.address,10000);
      });    
    });

    this.Then(/^I click on Asker Detail$/, function () {
      browser.waitForExist('svg[data-reactid=".3.1.0.0.1.1.1.0.4.1.1"]',10000);
      browser.click('svg[data-reactid=".3.1.0.0.1.1.1.0.4.1.1"]');
    });


    this.Then(/^I see dialog Asker Detail$/, function () {
      browser.waitForExist('h4=Asker Detail',10000);
    });


    this.Then(/^I click button close$/, function () {
      browser.waitForExist('button=Close',10000);
      browser.click('button[data-reactid=".4.1.0.0.2.2"]');
      
    });

    this.Then(/^I see and click time work$/, function () {

        browser.waitForExist('svg[data-reactid=".3.1.0.0.1.1.1.0.5.1.1.1"]',10000);
        browser.click('svg[data-reactid=".3.1.0.0.1.1.1.0.5.1.1.1"]');
    });

    function getDateTime(arg1,arg2) {
        var now     = new Date();
        
        if (arg2=="date") {
          now.setDate(now.getDate()-arg1);
        }
        else if(arg2=="month"){
          now.setMonth(now.getMonth()+1-arg1);
        }
        else if(arg2=="year"){
          now.setFullYear(now.getFullYear()-arg1);
        }
        var year    = now.getFullYear();
        var month   = now.getMonth()+1;
        
        if(arg2=="month")
            month   = now.getMonth();
        
        var day     = now.getDate();
        var time = now.toLocaleTimeString().replace(/(.*)\D\d+/, '$1');
            time = time.replace(' ',"").replace(':',""); 
        if(month.toString().length == 1) {
            var month = '0'+month;
        }
        if(day.toString().length == 1) {
            var day = '0'+day;
        }   
        var dateTime = month+'/'+day+'/'+year+'\t'+time;   
        
        return dateTime;
    }

    this.Then(/^I set value for input change date decrease "([^"]*)" day$/, function (arg1) {
           // const currentdate = new Date();
           //      currentdate.setDate(currentdate.getDate()-arg1);
           // var date = currentdate.toLocaleDateString();
           // var time = currentdate.toLocaleTimeString().replace(/(.*)\D\d+/, '$1');
           var date = getDateTime(arg1,"date");
           console.log(date);
           browser.addValue('input[name="bdaytime"]',date);
           browser.click('button=Lưu');
      });

    this.Then(/^I see dialog Error "([^"]*)"$/, function (arg1) {
          browser.waitForExist('h4=Error',10000);
    });

    this.Then(/^I set value for input change month decrease "([^"]*)" month$/, function (arg1) {
           var date = getDateTime(arg1,"month");
           //console.log(date);
           browser.addValue('input[name="bdaytime"]',date);
           browser.click('button=Lưu');
    });

    this.Then(/^I set value for input change year decrease "([^"]*)" year$/, function (arg1) {
           var date = getDateTime(arg1,"year");
           console.log(date);
           browser.addValue('input[name="bdaytime"]',date);
           browser.click('button=Lưu');
    });

     this.Then(/^I see dialog Xac Nhan "([^"]*)"$/, function (arg1) {
        browser.waitForExist('button=Xác nhận',10000);
    });

    this.Then(/^I click button "([^"]*)"$/, function (arg1) {
           browser.isVisible('button=Xác nhận');
           browser.click('button[data-reactid=".4.1.0.0.2.1"]');
    });

    this.Then(/^I see dialog Success$/, function () {
        browser.waitForExist('h4=Success',10000);
    });

    this.Then(/^I see input start date and I set it with value "([^"]*)"$/, function (arg1) {

    });

}
