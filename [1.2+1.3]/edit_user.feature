Feature: Edit User
  As a user of the site
  So that I can edit some information 
  
  @watch
  Scenario: Edit all username,email,password. 
    Given I have visited Localhost
    When I see title "Admin"
    And I click on admin "Admin"
    Then I see back end user "back-end user"
    Then I click on back end user "back-end user"
    And I see collection "Collection"
    Then I click first user "thienphuoc"
    Then I see information of user "Username:"
    Then I click edit user 
    Then I see page edit user
    Then I set value for the textfield username "thienphuoc2"
    Then I set value for the textfield password "123456"
    Then I set value for the textfield email "nguyenhoangthienphuoc2@gmail.com"
    Then I must see error email can not change

  @watch
  Scenario: Edit both username and password  with  6 or greater 6 characters..
    Given I have visited Localhost
    When I see title "Admin"
    And I click on admin "Admin"
    Then I see back end user "back-end user"
    Then I click on back end user "back-end user"
    And I see collection "Collection"
    Then I click first user "thienphuoc"
    Then I see information of user "Username:"
    Then I click edit user 
    Then I see page edit user
    Then I set value for the textfield username "thienphuoc2"
    Then I set value for the textfield password "123456"
    When submit the form
    Then I see dialog Xac Nhan "Xác nhận"
    And I click button ok "Xác nhận"    

  @watch
  Scenario: Edit both username and password , therein username have 6 or greater 6 characters and password have 1 characters.
    Given I have visited Localhost
    When I see title "Admin"
    And I click on admin "Admin"
    Then I see back end user "back-end user"
    Then I click on back end user "back-end user"
    And I see collection "Collection"
    Then I click first user "thienphuoc"
    Then I see information of user "Username:"
    Then I click edit user 
    Then I see page edit user
    Then I set value for the textfield username "thienphuoc"
    Then I set value for the textfield password "1"
    Then I must see error password use six or more characters

  @watch
  Scenario: Edit input password with 6 characters.The username and email not change. 
    Given I have visited Localhost
    When I see title "Admin"
    And I click on admin "Admin"
    Then I see back end user "back-end user"
    Then I click on back end user "back-end user"
    And I see collection "Collection"
    Then I click first user "thienphuoc"
    Then I see information of user "Username:"
    Then I click edit user 
    Then I see page edit user
    Then I set value for the textfield password "123456"
    When submit the form
    Then I see dialog Xac Nhan "Xác nhận"
    And I click button ok "Xác nhận"

  @watch
  Scenario: Edit input password with 1 characters.The username and email not change. 
    Given I have visited Localhost
    When I see title "Admin"
    And I click on admin "Admin"
    Then I see back end user "back-end user"
    Then I click on back end user "back-end user"
    And I see collection "Collection"
    Then I click first user "thienphuoc"
    Then I see information of user "Username:"
    Then I click edit user 
    Then I see page edit user
    Then I set value for the textfield password "1"
    Then I must see error password use six or more characters

  @watch
  Scenario: Edit input password with greater 6 characters.The username and email not change. 
    Given I have visited Localhost
    When I see title "Admin"
    And I click on admin "Admin"
    Then I see back end user "back-end user"
    Then I click on back end user "back-end user"
    And I see collection "Collection"
    Then I click first user "thienphuoc"
    Then I see information of user "Username:"
    Then I click edit user 
    Then I see page edit user
    Then I set value for the textfield password "123456789"
    When submit the form
    Then I see dialog Xac Nhan "Xác nhận"
    And I click button ok "Xác nhận"


    @watch
    Scenario: Edit username with 1 characters .The password and email not change. 
      Given I have visited Localhost
      When I see title "Admin"
      And I click on admin "Admin"
      Then I see back end user "back-end user"
      Then I click on back end user "back-end user"
      And I see collection "Collection"
      Then I click first user "thienphuoc"
      Then I see information of user "Username:"
      Then I click edit user 
      Then I see page edit user
      Then I set value for the textfield username "t"
      Then I must see error username use six or more characters

    
    @watch
    Scenario: Edit username with 6 or more characters .The password and email not change. 
      Given I have visited Localhost
      When I see title "Admin"
      And I click on admin "Admin"
      Then I see back end user "back-end user"
      Then I click on back end user "back-end user"
      And I see collection "Collection"
      Then I click first user "thienphuoc"
      Then I see information of user "Username:"
      Then I click edit user 
      Then I see page edit user
      Then I set value for the textfield username "thienphuochaha"
      When submit the form
      Then I see dialog Xac Nhan "Xác nhận"
      And I click button ok "Xác nhận"

   @watch
    Scenario: Delete User. 
      Given I have visited Localhost
      When I see title "Admin"
      And I click on admin "Admin"
      Then I see back end user "back-end user"
      Then I click on back end user "back-end user"
      And I see collection "Collection"
      Then I click user "testadmin"
      Then I see information of user "Username:"
      Then I click delete user 
      Then I see dialog Xac Nhan "Xác nhận"
      And I click button ok "Xác nhận"