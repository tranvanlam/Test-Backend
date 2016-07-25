Feature: Test 
  As a user of the site
  So that I add some tasker 
  I want to add tasker

    @watch 
    Scenario:Test view and Asker Detail click
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I click on Asker Detail
      Then I see dialog Asker Detail
      Then I click button close

    @watch 
    Scenario:Test Time Work click , and set time decrease one day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change date decrease "1" day
      And I see dialog Error "Không được nhập ngày quá khứ"


    @watch
     Scenario:Test Time Work click , and set time increase 1 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change date decrease "-1" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "Active" (Phan Thị Kim Phước-01647051715)..
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01647051715"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success

    @watch 
    Scenario:Test Time Work click , and set time increase 10 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change date decrease "-10" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "Active" (Phan Thị Kim Phước-01647051715)..
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01647051715"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success  

    @watch 
    Scenario:Test Time Work click , and set time increase 30 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change date decrease "-30" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

    @watch
    Scenario:Test with phone number input is exist in Tasker table and state is "Active" (Phan Thị Kim Phước-01647051715)..
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I click on title Them Nguoi Nhan "Thêm người nhận"
      Then I see and enter phone number input "01647051715"
      Then I submit value when click button "Thêm"
      Then I see dialog Xac Nhan and click "Xác nhận"
      Then I see dialog Success  

    @watch 
    Scenario:Test Time Work click , and set time increase 31 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change date decrease "-31" day
      Then I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"

    @watch 
    Scenario:Test Time Work click , and set time decrease 10 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change date decrease "10" day
      And I see dialog Error "Không được nhập ngày quá khứ"

    @watch 
    Scenario:Test Time Work click , and set time decrease 1 month than the current month.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change month decrease "1" month
      And I see dialog Error "Không được nhập ngày quá khứ"
    
    @watch 
    Scenario:Test Time Work click , and set time decrease 1 month than the current month.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change month decrease "10" month
      And I see dialog Error "Không được nhập ngày quá khứ"

    @watch 
    Scenario:Test Time Work click , and set time increase 1 month than the current month.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change month decrease "-1" month
      And I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"

    @watch 
    Scenario:Test Time Work click , and set time decrease 1 year than the current year.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change year decrease "1" year
      And I see dialog Error "Không được nhập ngày quá khứ"

    @watch 
    Scenario:Test Time Work click , and set time decrease 10 year than the current year.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change year decrease "10" year
      And I see dialog Error "Không được nhập ngày quá khứ"  

    @watch 
    Scenario:Test Time Work click , and set time increase 1 year than the current year.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |Y5mYuBFnDJgfPb6rJ|Dọn dẹp nhà|14/07/2016 17:55|Lan Anh|0906716226|Cảnh Viên 2, Tân Phú, Vietnam|100,000 VND - 2h|WAITING|
      Then I see and click time work
      Then I set value for input change year decrease "-1" year
      And I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"
