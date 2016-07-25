Feature: Add member based on the state waiting.
  As a user of the site
  So that I add some tasker 
  I want to add tasker
    
    @watch
    Scenario:Test with phone number input equal 123
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "123"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog error tasker is not exist
   
    @watch
    Scenario:Test with phone number input equal 012211122255
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "012211122255"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog error tasker is not exist

    @watch
    Scenario:Test with DOUBLE phone number input is exist in 'Người nhận' tab.
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "0982876871"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog error Conflict working time
    
    @watch
    Scenario:Test with phone number input is exist in Tasker table , state is "Active" and service different service in 'Người nhận' tab, tasker is not employee  (Ex: Nguyễn Tấn Thành-0917547133)
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "0917547133"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog error Tasker service is not allowed
   
    @watch
    Scenario:Test with phone number input is exist in Tasker table , state is "Active" and service different service in 'Người nhận' tab, tasker is employee.(Ex:Dao Van Cong - 0904092041)
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "0904092041"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog error Tasker service is not allowed
 
    @watch
    Scenario:Test with phone number input is exist in Tasker table , state is "Active" and service like service in 'Người nhận' tab , tasker is not employee (ex:Phan Thị Kim Phước-01647051715).
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "01647051715"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success thay tasker thành công
      
    @watch
    Scenario:Test with phone number input is exist in Tasker table , state is "Active" and service like service in 'Người nhận' tab , tasker is employee.
      Given I have visited localhost task
      When I see state confirmed
      When I click state confirmed
      When I click on title Thay Nguoi Nhan "Thay người nhận"
      Then I see and enter phone number input "01696889984"
      Then I submit value when click button "Thay"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog error Tasker is employee