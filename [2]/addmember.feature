Feature: Add member in task (based on state: POSTED)
  As a user of the site
  So that I can add some tasker 
  And I want to create and delete taskers on my task posted page.

    @watch
    Scenario:Test with phone number input equal 123
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "123"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error

    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "UNVERIFIED" (Do Hang-0903109978).
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "0903109978"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error

    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "Active" and tasker is not employee (TRAN QUOC BAO CHAU-0982876871)
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "0982876871"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success
 
    @watch
    Scenario:Reset
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Nguoi Nhan "Người nhận"
      Then I see and click button "Xác nhận" in "Danh sách người nhận"
      Then I see dialog Success and click button "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:Reset 2
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Nguoi Nhan "Người nhận"
      Then I see and click button "Xóa" in "Danh sách người nhận"
      Then I see dialog Success and click button "Xác nhận"
      Then I see dialog Success

   @watch
   Scenario:Test with phone number input is exist in Tasker table and state is "Active" and  tasker is not employee  (Phan Thị Kim Phước-01647051715). 
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01647051715"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success
 
    @watch
    Scenario:Reset
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Nguoi Nhan "Người nhận"
      Then I see and click button "Xác nhận" in "Danh sách người nhận"
      Then I see dialog Success and click button "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:Reset 2
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Nguoi Nhan "Người nhận"
      Then I see and click button "Xóa" in "Danh sách người nhận"
      Then I see dialog Success and click button "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:[pass] Test with phone number input is exist in Tasker table and state is "Active" and  tasker is employee  (Dao Van Cong-0904092041). 
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "0904092041"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error

    @watch
    Scenario:[pass] Test with phone number input is exist in Tasker table and state is "UNVERIFIED" (Do Hang-0903109978). 
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "0903109978"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error

    @watch
    Scenario:[pass] Test with phone number input is exist in Tasker table and state is "UNVERIFIED" (Thành-01662849486).
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01662849486"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error
