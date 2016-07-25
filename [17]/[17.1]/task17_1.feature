Feature: Test Report
  As a user of the site
  So that I can modify some tasker

    @watch
    Scenario: [Pass] Add a new phone number with a value of digits.
      Given I have visited localhost TesterUser
      Then I see title "small=Danh sách số điện thoại"
      And I enter new input with value "01228690752"
      Then I click on button "Thêm"
      Then I see Success

    @watch
    Scenario: [Failed] Add a phone number already existed.
      Given I have visited localhost TesterUser
      Then I see title "small=Danh sách số điện thoại"
      And I enter new input with value "01228690752"
      Then I click on button "Thêm"
      Then I see Error  

    @watch
    Scenario: [Failed] Add a new phone number with a value of text.
      Given I have visited localhost TesterUser
      Then I see title "small=Danh sách số điện thoại"
      And I enter new input with value "qwertyuiopasdfghjklzxcvbnm"
      Then I click on button "Thêm"
      Then I see Error  
      
    @watch
    Scenario: [Failed] Add a new phone number with a value of special characters.
      Given I have visited localhost TesterUser
      Then I see title "small=Danh sách số điện thoại"
      And I enter new input with value "!@#$%^&*()_+{}:,./-"
      Then I click on button "Thêm"
      Then I see Error  

    @watch
    Scenario:[Failed] Add a new phone number with a null value
      Given I have visited localhost TesterUser
      Then I see title "small=Danh sách số điện thoại"
      And I enter new input with value ""
      Then I click on button "Thêm"
      Then I see Error  

    @watch
    Scenario:[Pass] Remove a phone number.(EX:Remove first)
      Given I have visited localhost TesterUser
      Then I see title "small=Danh sách số điện thoại"
      And I remove first the phone number in list phone number
      Then I see Success  


