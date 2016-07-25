Feature: Test Others
  As a user of the site
  So that I can modify some other

    @watch
    Scenario:[Pass] Add a new phone number with a value of digits.
      Given I have visited localhost DeleteUser
      Then I see title "small=Danh sách số điện thoại"
      Then I see input phone number
      And I enter input with value "01228713493"
      Then I click on button "Thêm"
      Then I see Success

    @watch
    Scenario:[Failed] Add a phone number already existed.
      Given I have visited localhost DeleteUser
      Then I see title "small=Danh sách số điện thoại"
      Then I see input phone number
      And I enter input with value "01228713493"
      Then I click on button "Thêm"
      Then I see Error
    
    @watch
    Scenario:[Failed] Add a new phone number with a value of text.
      Given I have visited localhost DeleteUser
      Then I see title "small=Danh sách số điện thoại"
      Then I see input phone number
      And I enter input with value "Đuổi 6 tàu cá Trung Quốc xâm phạm sâu vùng biển Việt Nam"
      Then I click on button "Thêm"
      Then I see Error

    @watch
    Scenario:[Failed] Add a new phone number with a value of special characters.
      Given I have visited localhost DeleteUser
      Then I see title "small=Danh sách số điện thoại"
      Then I see input phone number
      And I enter input with value "!@#$%^&*()_+=?/.<>,;:"
      Then I click on button "Thêm"
      Then I see Error  

    @watch
    Scenario:[Failed] Add a new phone number with a null value
      Given I have visited localhost DeleteUser
      Then I see title "small=Danh sách số điện thoại"
      Then I see input phone number
      And I enter input with value ""
      Then I click on button "Thêm"
      Then I see Error

     @watch
     Scenario:[Pass] Remove a phone number. (Ex: Remove first )
        Given I have visited localhost DeleteUser
        Then I see title "small=Danh sách số điện thoại"
        And I see the first phone number
        Then I delete it
        Then I see Success





