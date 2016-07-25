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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
      Then I see and click time work
      Then I set value for input change date decrease "-1" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

    @watch 
    Scenario:Test Time Work click , and set time increase 10 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
      Then I see and click time work
      Then I set value for input change date decrease "-10" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

    @watch 
    Scenario:Test Time Work click , and set time increase 30 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
      Then I see and click time work
      Then I set value for input change date decrease "-30" day
      And I see dialog Xac Nhan "Bạn có muốn thay đổi ngày làm của công việc này?"
      And I click button "Xác nhận"
      Then I see dialog Success

    @watch 
    Scenario:Test Time Work click , and set time increase 31 day than the current day.
      Given I have visited localhost task
      When I see state waiting
      When I click state waiting
      When I see title "Thông tin"
      When I see table information 
           |id|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
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
           |vhmipx5xR8szmFfj2|Dọn dẹp nhà|29/04/2016 19:00|Thao|0949080286|9 (XN Cao Su Dien Bien) Nguyễn Khoái, phường 1, Quận 4, Hồ Chí Minh, Vietnam|100,000 VND - 2h|CONFIRMED|
      Then I see and click time work
      Then I set value for input change year decrease "-1" year
      And I see dialog Error "Ngày mới nằm trong 30 ngày tính từ hiện tại"
