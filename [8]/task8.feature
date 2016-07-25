Feature: Test 
  As a user of the site
  So that I add some tasker 
  I want to add tasker
    
    Scenario:Test view and Asker Detail click
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I click on Asker Detail
      Then I see dialog Asker Detail
      Then I click button close

    Scenario:Test Time Work click , and set time decrease one day than the current day.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change date decrease "1" day
      And I see dialog Error "Không được nhập ngày quá khứ"

     Scenario:Test Time Work click , and set time increase 1 day than the current day.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change date decrease "-1" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

     Scenario:Test Time Work click , and set time increase 10 day than the current day.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change date decrease "-10" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

     Scenario:Test Time Work click , and set time increase 30 day than the current day.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change date decrease "-30" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

     @watch
     Scenario:Test Time Work click , and set time increase 31 day than the current day.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change date decrease "-31" day
      Then I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"

    Scenario:Test Time Work click , and set time decrease 10 day than the current day.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change date decrease "10" day
      And I see dialog Error "Không được nhập ngày quá khứ"


    Scenario:Test Time Work click , and set time decrease 1 month than the current month.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change month decrease "1" month
      And I see dialog Error "Không được nhập ngày quá khứ"

    Scenario:Test Time Work click , and set time decrease 1 month than the current month.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change month decrease "10" month
      And I see dialog Error "Không được nhập ngày quá khứ"

    @watch
    Scenario:Test Time Work click , and set time increase 1 month than the current month.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change month decrease "-1" month
      And I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"

    Scenario:Test Time Work click , and set time decrease 1 year than the current year.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change year decrease "1" year
      And I see dialog Error "Không được nhập ngày quá khứ"

    Scenario:Test Time Work click , and set time decrease 10 year than the current year.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change year decrease "10" year
      And I see dialog Error "Không được nhập ngày quá khứ"  

    @watch
    Scenario:Test Time Work click , and set time increase 1 year than the current year.
      Given I have visited localhost task
      When I see state posted
      When I click state posted
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |R4G5qLXEdj8DxaHzR|Dọn dẹp nhà|29/04/2016 10:10|Phuong|0938609900|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|POSTED|
      Then I see and click time work
      Then I set value for input change year decrease "-1" year
      And I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"
