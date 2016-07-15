module.exports = function(){
  this.Given(/^visited backend$/, function(){
    browser.url('http://192.168.1.123:4000');
  });

   this.When(/^click create user "([^"]*)"$/, function(admin){
    browser.waitForExist('span='+ admin,10000);
    browser.click('span='+ admin);
    browser.click('a=create new user');
  });
  
  this.Then(/^I see "([^"]*)"$/, function(name){
    browser.waitForExist('h3=' + name,10000);
  });

  this.Then(/^set value in username "([^"]*)"$/,function(username){
    browser.setValue('input[name="username"]', username);
  });

  this.Then(/^set value in email "([^"]*)"$/,function(email){
    browser.setValue('input[name="email"]', email);
  });

  this.Then(/^set value in password "([^"]*)"$/,function(password){
    browser.setValue('input[name="password"]', password);
  });

  this.Then(/^click save user$/, function(){
    browser.click('button=Lưu');
  });

  this.Then(/^see and click accept "([^"]*)"$/, function(accept){
    browser.waitForExist('button='+ accept,10000);
    browser.click('button='+ accept);
  });

  this.Then(/^see username "([^"]*)"$/, function(username){
    browser.waitForExist('a='+ username,10000);
  });

  this.Then(/^see error password change less than six characters "([^"]*)"$/, function(error){
    browser.waitForExist('span='+ error,10000);
  });

  this.Then(/^see error request set email exactly "([^"]*)"$/, function(error){
    browser.waitForExist('span='+ error,10000);
  });

  this.Then(/^see error request set password "([^"]*)"$/, function(error){

  });

  this.Then(/^see error request set email "([^"]*)"$/, function(error){

  });

  this.Then(/^see error request set username "([^"]*)"$/, function(error){

  });

  this.Then(/^see error request set email and password "([^"]*)"$/, function(error){

  });

  this.Then(/^see error username already exists "([^"]*)"$/, function(error){
    browser.waitForExist('div='+ error);
  });

  this.Then(/^see error request set username and password "([^"]*)"$/, function(error){

  });

  this.Then(/^see error request set username and email "([^"]*)"$/, function(error){

  });


  // null
  this.Then(/^see error request set value username email password "([^"]*)"$/, function(error){
    
  });






}
