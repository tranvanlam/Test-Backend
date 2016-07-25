Feature: Test Report
  As a user of the site
  So that I can modify some tasker

    @watch
    Scenario: Test customer filter
      Given I have visited localhost UserReport
      Then I see page user report
      Then I see button "Sync"
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"

    @watch
    Scenario: [Pass] Test filter customer with type is ASKER+TASKER
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check "ASKER" and "TASKER" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"

    @watch
    Scenario: [Pass] Test filter customer with type is ASKER and states not change
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check "ASKER" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"

    @watch
    Scenario: [Pass] Test filter customer with type is TASKER and states not change
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check "TASKER" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"

    @watch
    Scenario: [Pass] Test filter customer with state is ACTIVE and type not change
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check state "ACTIVE" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"


    @watch
    Scenario: [Pass] Test filter customer with state is INACTIVE and type not change
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check state "INACTIVE" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"
    
    @watch
    Scenario: [Pass] Test filter customer with state is UNVERIFIED and type not change
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check state "UNVERIFIED" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"
    
    @watch
    Scenario: [Pass] Test filter customer with state is LOCKED and type not change
      Given I have visited localhost UserReport
      Then I see page user report
      And I click title "Bộ lọc khách hàng"
      And I check state "LOCKED" is exist
      And I click on button "Sync"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      And I see dialog "Success"
    