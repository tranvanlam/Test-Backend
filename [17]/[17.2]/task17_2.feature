Feature: Test Report
  As a user of the site
  So that I can modify some tasker

    @watch
    Scenario: Test customer filter
      Given I have visited localhost TaskReport
      Then I see page task report
      And I see button "Sync"
      Then I click on button "Sync"
      And I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      Then I see dialog "Success"
