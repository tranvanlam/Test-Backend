Feature: Add member based on the state waiting.
  As a user of the site
  So that I add some tasker 
  I want to add tasker

    @watch
    Scenario:Test with phone number input equal 123
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "123"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error

    @watch
    Scenario:Test with phone number input different phone number Tasker. (ex:012211122255)
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "012211122255"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error  
 
    @watch
    Scenario:Test with DOUBLE phone number input is exist in Tasker table and state is "Active" and tasker is not employee (TRAN QUOC BAO CHAU-0982876871). Note: phone number is exist can not added
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "0982876871"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error    
    
    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "Active" and tasker is not employee (Phan Thị Kim Phước - 01647051715).
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01647051715"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "UNVERIFIED" (Do Hang-0903109978).
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "0903109978"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error


    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "Active" and tasker is employee (Phan Văn Thịnh 01646821650).
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01646821650"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Error
