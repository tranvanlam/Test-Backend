Feature: Test Cancel Task
  As a user of the site
  So that I cancle some tasker 

    @watch
    Scenario:[Pass] hide tasker in task
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Người nhận" and button cancle task
      Then I click on title "Người nhận"
      Then I see "Danh sách người nhận" and i click on button "Ẩn"
      Then I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog ""


   @watch
    Scenario:[Failed] Show tasker in task (Note: hiện tasker thành công)
        Given I have visited localhost task
        When I see state waiting
        When I click state waiting
        When I see title "Người nhận" and button cancle task
        Then I click on title "Người nhận"
        Then I see "Danh sách người nhận" and i click on button "Hiện"
        Then I see dialog "Xác nhận" and i click on button "Xác nhận"
        Then I see dialog Error