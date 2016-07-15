Feature: User test
  Delete User

  @watch
  Scenario: Delete user
    Given visited backend
    When click create user "Admin"
    Then I see and click "back-end user"
    Then set value in username "testadmin"
    And set value in email "lgroup1107@gmail.com"
    And set value in password "123456"
    Then click save user
    Then see and click accept "Xác nhận"
    Then see username "testadmin"
