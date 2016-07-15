Feature: Create User
  As a human
  I want to create user on backend

  @watch
  Scenario: Create user with set value username, email and password change less than six characters
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "test1"
    And set value in email "lgroup1107@gmail.com"
    And set value in password "12345"
    Then click save user
    Then see error password change less than six characters "error"

  @watch
  Scenario: Create user with set value username, email and password change greater than 6 characters
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "testadmin"
    And set value in email "lgroup1107@gmail.com"
    And set value in password "123456"
    Then click save user
    Then see and click accept "Xác nhận"
    Then see username "testadmin"

  @watch
  Scenario: Create user with set value username, email incorrect and password change greater than 6 characters
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "testadmin"
    And set value in email "lgroup1107"
    And set value in password "123456"
    Then click save user
    Then see error request set email exactly "error"


  @watch
  Scenario: Create user with set value username and email
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "testadmin"
    And set value in email "lgroup1107@gmail.com"
    Then click save user
    Then see error request set password "error"

  @watch
  Scenario: Create user with set value username and password
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "testadmin"
    And set value in password "testadmin"
    Then click save user
    Then see error request set email "error"

  @watch
  Scenario: Create user with set value email and password
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    And set value in email "lgroup1107@gmail.com"
    And set value in password "testadmin"
    Then click save user
    Then see error request set username "error"

  @watch
  Scenario: Create user with set value username
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "testadmin"
    Then click save user
    Then see error request set email and password "error"

  @watch
  Scenario: Create user with set value username already exists
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then set value in username "testadmin"
    And set value in email "lgroup1107@gmail.com"
    And set value in password "testadmin"
    Then click save user
    Then see and click accept "Xác nhận"
    Then see error username already exists "Username already exists. [403]"

  @watch
  Scenario: Create user with set value email
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    And set value in email "lgroup1107@gmail.com"
    Then click save user
    Then see error request set username and password "error"

  @watch
  Scenario: Create user with set value password
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    And set value in password "testadmin"
    Then click save user
    Then see error request set username and email "error"

  @watch
  Scenario: Create user with set value null
    Given visited backend
    When click create user "Admin"
    Then I see "Create new back-end user"
    Then click save user
    Then see error request set value username email password "error"
