Feature: Test Others
  As a user of the site
  So that I can modify some other

    @watch
    Scenario:[Pass] Test Send Notification To All Asker
      Given I have visited localhost SendNotification
      Then I see page send notification
      And I click on title "Send to All"
      Then I see two button "Send Notification To All Asker" and "Send Notification To All Tasker"
      And I click on button "Send Notification To All Asker"
      Then I see dialog "Send Notification"
      And I see textfield "Title:"
      Then I enter input with value "This is Title" and id ".1.1.0.0.1.0.1.0"
      And I see textfield "Text:"
      Then I enter input with value "Send Notification To All Asker" and id ".1.1.0.0.1.1.1.0"
      And I click on button "Send"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"

    @watch
    Scenario:[Pass] Test Send Notification To All Tasker
      Given I have visited localhost SendNotification
      Then I see page send notification
      And I click on title "Send to All"
      Then I see two button "Send Notification To All Asker" and "Send Notification To All Tasker"
      And I click on button "Send Notification To All Tasker"
      Then I see dialog "Send Notification"
      And I see textfield "Title:"
      Then I enter input with value "This is Title" and id ".1.1.0.0.1.0.1.0"
      And I see textfield "Text:"
      Then I enter input with value "Send Notification To All Tasker" and id ".1.1.0.0.1.1.1.0"
      And I click on button "Send"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"  



     


