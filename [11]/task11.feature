Feature: Test Cancel Task
  As a user of the site
  So that I add some tasker 
  I want to add tasker

    Scenario:Test Cancel Task based on state POSTED with the reason is null
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text ""
      Then I click on button "Xác nhận"
      Then I see dialog Error

    Scenario:Test Cancel Task based on state POSTED with the reason is not null
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text "hahaha"
      Then I click on button "Xác nhận"
      Then I see dialog Success and i click on button "Xác nhận" 

    Scenario:Test Cancel Task based on state CONFIRMED with the reason is null
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text ""
      Then I click on button "Xác nhận"
      Then I see dialog Error

    Scenario:Test Cancel Task based on state CONFIRMED with the reason is not null
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text "hahaha"
      Then I click on button "Xác nhận"
      Then I see dialog Success and i click on button "Xác nhận"   
    
    @watch
    Scenario:Test Cancel Task based on state WAITING with the reason is null
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text ""
      Then I click on button waiting "Xác nhận"
      Then I see dialog Error
    
    Scenario:Test Cancel Task based on state WAITING with the reason is not null
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text "hahaha"
      Then I click on button waiting "Xác nhận"
      Then I see dialog Success and i click on button "Xác nhận"   

    Scenario:Test Cancel Task based on state EXPIRED with the reason is null
      Given I have visited localhost task
      When I see state expired
      When I click state expired
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text ""
      Then I click on button "Xác nhận"
      Then I see dialog Error

    Scenario:Test Cancel Task based on state EXPIRED with the reason is not null
      Given I have visited localhost task
      When I see state expired
      When I click state expired
      When I see title "Thông tin" and button cancle task
      Then I click on button "Cancel Task"
      And I see dialog "Cancel Task"
      Then I enter the reason in input with id ".4.1.0.0.1.0.1.0" and text "thien phuoc"
      Then I click on button "Xác nhận"
      Then I see dialog Success and i click on button "Xác nhận"   
