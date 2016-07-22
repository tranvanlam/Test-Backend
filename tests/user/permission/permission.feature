Feature: Test Permission Of User
	As a user

	Background:
		Given visited backend
		Then I click admin "Admin" and I click back end user "back-end user"
		Then I see collection user and I click user lgp ".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"
		Then I see user name lgp "lgp" and I click edit "edit"
		And I see app setting "AppSetting:"

	Scenario: Test not have permission to read of Appsetting
		And I uncheck permission "AppSetting-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/app-setting"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of Appsetting
		And I check permission "AppSetting-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/app-setting"
		And I see app setting in page "Cài đặt chung"

	Scenario: Test not have permission to write of Appsetting
		And I uncheck permission "AppSetting-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/app-setting"
		And I click update information "Cập nhật"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of Appsetting
		And I check permission "AppSetting-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/app-setting"
		And I click update information "Cập nhật"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Cập nhật thành công"

	Scenario: Test not have permission to read of Backend setting
		And I uncheck permission "BackendSetting-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/backend-setting"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of Backend setting
		And I check permission "BackendSetting-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/backend-setting"
		And I see backend setting in page "Schedule:"

	Scenario: Test not have permission to write of Backend setting
		And I uncheck permission "BackendSetting-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/backend-setting"
		And I click update information "Cập nhật"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of Backend setting
		And I check permission "BackendSetting-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/backend-setting"
		And I click update information "Cập nhật"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Cập nhật thành công"

	Scenario: Test not have permission to read of Backend user
		And I uncheck permission "backendUser-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/users"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of Backend user
		And I check permission "backendUser-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/users"
		And I see collection user in page "Collection"

	Scenario: Test not have permission to write of Backend user
		And I uncheck permission "backendUser-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/users"
		Then I see collection user and I click user lgp ".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"
		Then I see user name lgp "lgp" and I click edit "edit"
		And I see app setting "AppSetting:"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of Backend user
		And I check permission "backendUser-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/users"
		Then I see collection user and I click user lgp ".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"
		Then I see user name lgp "lgp" and I click edit "edit"
		And I see app setting "AppSetting:"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I see collection user in page "Collection"

	Scenario: Test not have permission to delete of Backend user
		And I uncheck permission "backendUser-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/users"
		Then I see collection user and I click user lgp ".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"
		Then I see user name lgp "lgp" and I click edit "delete"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"
	
	Scenario: Test have permission to delete of Backend user
		And I check permission "backendUser-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/users"
		Then I see collection user and I click user lgp ".0.1.2.0.1.0.1.$4AKbzeWWuFi7zpodK.0"
		Then I see user name lgp "lgp" and I click edit "delete"
		And I see accept and I click accept "Xác nhận"

	Scenario: Test not have permission to read of task
		And I uncheck permission "task-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/task"
		And I see permission deny in page "PERMISSION DENY"
	
	Scenario: Test have permission to read of task
		And I check permission "task-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/task"
		And I see table task "Dịch vụ"
			|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
			|Dọn dẹp nhà|29/04/2016 08:00|Quân|0902155583|634 Điện Biên Phủ, phường 11, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|28/04/2016 15:22|CONFIRMED|
	
	Scenario: Test not have permission to write of task
		And I uncheck permission "task-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/task"
		And I see table task "Dịch vụ"
			|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
			|Dọn dẹp nhà|29/04/2016 08:00|Quân|0902155583|634 Điện Biên Phủ, phường 11, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|28/04/2016 15:22|CONFIRMED|
		And I click task "CONFIRMED"
		Then I see information task "Thông tin liên hệ"
		And I click complete task "Complete Task"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of task
		And I check permission "task-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/task"
		And I see table task "Dịch vụ"
			|service|time_work|name|phone_number|address|price|evaluate|time_post|status|
			|Dọn dẹp nhà|29/04/2016 08:00|Quân|0902155583|634 Điện Biên Phủ, phường 11, Hồ Chí Minh, Việt Nam|100,000 VND - 2h|28/04/2016 15:22|CONFIRMED|
		And I click task "CONFIRMED"
		Then I see information task "Thông tin liên hệ"
		And I click complete task "Complete Task"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "complete task thành công"

	Scenario: Test not have permission to read of schedule
		And I uncheck permission "schedule-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/schedule"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of schedule
		And I check permission "schedule-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/schedule"
		And I see table schedule "Dịch vụ"
			|service|time_work|name|phone_number|time_post|status|
			|Dọn dẹp nhà|06:00|Ha|0908985188|29/04/2016 09:02|ACTIVE|

	Scenario: Test not have permission to write of schedule
		And I uncheck permission "schedule-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/schedule"
		And I see table schedule "Dịch vụ"
			|service|time_work|name|phone_number|time_post|status|
			|Dọn dẹp nhà|06:00|Ha|0908985188|29/04/2016 09:02|ACTIVE|
		And I click schedule with status "ACTIVE"
		And I see dialog and I click stop schedule "Dừng"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of schedule
		And I check permission "schedule-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/schedule"
		And I see table schedule "Dịch vụ"
			|service|time_work|name|phone_number|time_post|status|
			|Dọn dẹp nhà|06:00|Ha|0908985188|29/04/2016 09:02|ACTIVE|
		And I click schedule with status "ACTIVE"
		And I see dialog and I click stop schedule "Dừng"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Dừng lịch làm việc thành công"

	Scenario: Test not have permission to delete of schedule
		And I uncheck permission "schedule-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/schedule"
		And I see table schedule "Dịch vụ"
			|service|time_work|name|phone_number|time_post|status|
			|Dọn dẹp nhà|06:00|Ha|0908985188|29/04/2016 09:02|ACTIVE|
		And I click schedule with status "ACTIVE"
		And I see dialog and I click stop schedule "Xóa"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY [403]"

	Scenario: Test have permission to delete of schedule
		And I check permission "schedule-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/schedule"
		And I see table schedule "Dịch vụ"
			|service|time_work|name|phone_number|time_post|status|
			|Dọn dẹp nhà|06:00|Ha|0908985188|29/04/2016 09:02|ACTIVE|
		And I click schedule with status "ACTIVE"
		And I see dialog and I click stop schedule "Xóa"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Xóa lịch làm việc thành công"

	Scenario: Test not have permission to read of asker
		And I uncheck permission "asker-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/asker"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of asker
		And I check permission "asker-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/asker"
		And I see table asker "Tên"
			|name|phone_number|status|time_build|referral_code|friend code|
			|Phuong|0938609900|ACTIVE|29/04/2016 09:34|||
			|a xin|	0903837158|	ACTIVE|28/04/2016 20:25|||

	Scenario: Test not have permission to write of asker
		And I uncheck permission "asker-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/asker"
		And I see table asker "Tên"
			|name|phone_number|status|time_build|referral_code|friend code|
			|Phuong|0938609900|ACTIVE|29/04/2016 09:34|||
			|a xin|	0903837158|	ACTIVE|28/04/2016 20:25|||
		And I click asker with status "LOCKED"
		And I see dialog asker detail "Asker Detail"
		Then I click button activate "Activate"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of asker
		And I check permission "asker-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/asker"
		And I see table asker "Tên"
			|name|phone_number|status|time_build|referral_code|friend code|
			|Phuong|0938609900|ACTIVE|29/04/2016 09:34|||
			|a xin|	0903837158|	ACTIVE|28/04/2016 20:25|||
		And I click asker with status "LOCKED"
		And I see dialog asker detail "Asker Detail"
		Then I click button activate "Activate"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Activate thành công"
	
	Scenario: Test not have permission to write of asker
		And I uncheck permission "asker-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/asker"
		And I see table asker "Tên"
			|name|phone_number|status|time_build|referral_code|friend code|
			|Phuong|0938609900|ACTIVE|29/04/2016 09:34|||
			|a xin|	0903837158|	ACTIVE|28/04/2016 20:25|||
		And I click asker with status "ACTIVE"
		And I see dialog asker detail "Asker Detail"
		Then I click tab other "Khác"
		And I not see button delete account "Xóa tài khoản"

	Scenario: Test have permission to write of asker
		And I check permission "asker-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/asker"
		And I see table asker "Tên"
			|name|phone_number|status|time_build|referral_code|friend code|
			|Phuong|0938609900|ACTIVE|29/04/2016 09:34|||
			|a xin|	0903837158|	ACTIVE|28/04/2016 20:25|||
		And I click asker with status "ACTIVE"
		And I see dialog asker detail "Asker Detail"
		Then I click tab other "Khác"
		And I see button delete account "Xóa tài khoản"

	Scenario: Test not have permission to read of tasker
		And I uncheck permission "tasker-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of tasker
		And I check permission "tasker-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I see table tasker "Tên"
			|name|phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|

	Scenario: Test not have permission to write of tasker
		And I uncheck permission "tasker-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I see table tasker "Tên"
			|name|phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
		And I click tasker with status "ACTIVE"
		And I see general information "Thông tin chi tiết" and I click "Thông tin chung"
		And I click update information "Cập nhật thông tin cá nhân"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of tasker
		And I check permission "tasker-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I see table tasker "Tên"
			|name|phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
		And I click tasker with status "ACTIVE"
		And I see general information "Thông tin chi tiết" and I click "Thông tin chung"
		And I click update information "Cập nhật thông tin cá nhân"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Cập nhật thông tin cho tasker thành công"

	Scenario: Test not have permission to delete of tasker
		And I uncheck permission "tasker-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I see table tasker "Tên"
			|name|phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
		And I click tasker with status "ACTIVE"
		And I see general information "Thông tin chi tiết" and I click "Thông tin chung"
		Then I click tab other "Khác"
		And I not see button delete account "Xóa tài khoản"

	Scenario: Test have permission to delete of tasker
		And I check permission "tasker-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I see table tasker "Tên"
			|name|phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
		And I click tasker with status "ACTIVE"
		And I see general information "Thông tin chi tiết" and I click "Thông tin chung"
		Then I click tab other "Khác"
		And I see button delete account "Xóa tài khoản"

	Scenario: Test not have permission to read of user report
		And I uncheck permission "userReport-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-report"
		And I see permission deny in page "PERMISSION DENY"
		And I go to website with domain "http://192.168.1.123:4000/task-report"
		And I see permission deny in page "PERMISSION DENY"
		And I go to website with domain "http://192.168.1.123:4000/tester-user"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of user report
		And I check permission "userReport-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-report"
		And I see table user report "Tên"
			|name|type|phone_number|status|device|complete|job_end|online_end|time_build|
			|Phuong|ASKER|0938609900|ACTIVE||29/04/2016 10:10||29/04/2016 09:34|
		And I go to website with domain "http://192.168.1.123:4000/task-report"
		And I see table task report "Dịch vụ"
			|service|mem_post|price|mem_work|evaluate|time_work|time_post|status|
			|Dọn dẹp nhà|Ha - 0908985188|120,000 VND - 2h|||16/07/2016 06:00|15/07/2016 18:00|CANCELED|
		And I go to website with domain "http://192.168.1.123:4000/tester-user"
		And I see list phone number "Danh sách số điện thoại"

	Scenario: Test not have permission to write of user report
		And I uncheck permission "userReport-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-report"
		And I see table user report "Tên"
			|name|type|phone_number|status|device|complete|job_end|online_end|time_build|
			|Phuong|ASKER|0938609900|ACTIVE||29/04/2016 10:10||29/04/2016 09:34|
		And I go to website with domain "http://192.168.1.123:4000/task-report"
		And I see table task report "Dịch vụ"
			|service|mem_post|price|mem_work|evaluate|time_work|time_post|status|
			|Dọn dẹp nhà|Ha - 0908985188|120,000 VND - 2h|||16/07/2016 06:00|15/07/2016 18:00|CANCELED|
		And I go to website with domain "http://192.168.1.123:4000/tester-user"
		And I see list phone number "Danh sách số điện thoại"
		And I set phone number of input "01655819807"
		And I click add "Thêm"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of user report
		And I check permission "userReport-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-report"
		And I see table user report "Tên"
			|name|type|phone_number|status|device|complete|job_end|online_end|time_build|
			|Phuong|ASKER|0938609900|ACTIVE||29/04/2016 10:10||29/04/2016 09:34|
		And I go to website with domain "http://192.168.1.123:4000/task-report"
		And I see table task report "Dịch vụ"
			|service|mem_post|price|mem_work|evaluate|time_work|time_post|status|
			|Dọn dẹp nhà|Ha - 0908985188|120,000 VND - 2h|||16/07/2016 06:00|15/07/2016 18:00|CANCELED|
		And I go to website with domain "http://192.168.1.123:4000/tester-user"
		And I see list phone number "Danh sách số điện thoại"
		And I set phone number of input "01655819807"
		And I click add "Thêm"
		And I see phone number in list "01655819807"

	Scenario: Test not have permission to delete of user report
		And I uncheck permission "userReport-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-report"
		And I see table user report "Tên"
			|name|type|phone_number|status|device|complete|job_end|online_end|time_build|
			|Phuong|ASKER|0938609900|ACTIVE||29/04/2016 10:10||29/04/2016 09:34|
		And I go to website with domain "http://192.168.1.123:4000/task-report"
		And I see table task report "Dịch vụ"
			|service|mem_post|price|mem_work|evaluate|time_work|time_post|status|
			|Dọn dẹp nhà|Ha - 0908985188|120,000 VND - 2h|||16/07/2016 06:00|15/07/2016 18:00|CANCELED|
		And I go to website with domain "http://192.168.1.123:4000/tester-user"
		And I see list phone number "Danh sách số điện thoại"
		And I click delete "X"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to delete of user report
		And I check permission "userReport-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-report"
		And I see table user report "Tên"
			|name|type|phone_number|status|device|complete|job_end|online_end|time_build|
			|Phuong|ASKER|0938609900|ACTIVE||29/04/2016 10:10||29/04/2016 09:34|
		And I go to website with domain "http://192.168.1.123:4000/task-report"
		And I see table task report "Dịch vụ"
			|service|mem_post|price|mem_work|evaluate|time_work|time_post|status|
			|Dọn dẹp nhà|Ha - 0908985188|120,000 VND - 2h|||16/07/2016 06:00|15/07/2016 18:00|CANCELED|
		And I go to website with domain "http://192.168.1.123:4000/tester-user"
		And I see list phone number "Danh sách số điện thoại"
		And I click delete "X"
		And I not see phone number in list

	Scenario: Test not have permission to read of service
		And I uncheck permission "service-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/service"
		And I see permission deny in page "PERMISSION DENY"
		And I go to website with domain "http://192.168.1.123:4000/sub-service"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of service
		And I check permission "service-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/service"
		And I see table service "Dịch vụ"
			|service|icon|costSuggestion|status|weight|
			|Dọn dẹp nhà||50000|ACTIVE|1|
			|Vệ sinh máy lạnh||100000|ACTIVE|2|
		And I go to website with domain "http://192.168.1.123:4000/sub-service"
		And I see table sub service "Dịch vụ con"
			|sub_service|service|cost|status|
			|Làm móng|Làm đẹp|70000|ACTIVE|
			|Làm tóc|Làm đẹp|80000|ACTIVE|
			|Trang điểm|Làm đẹp|90000|ACTIVE|

	Scenario: Test not have permission to write of service
		And I uncheck permission "service-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/service"
		And I see table service "Dịch vụ"
			|service|icon|costSuggestion|status|weight|
			|Dọn dẹp nhà||50000|ACTIVE|1|
			|Vệ sinh máy lạnh||100000|ACTIVE|2|
		Then I click add service "Thêm dịch vụ"
		And I see service information "Thông tin dịch vụ"
		And I click general information "Thông tin chung"
		And I create "Tạo"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"
		And I go to website with domain "http://192.168.1.123:4000/sub-service"
		And I see table sub service "Dịch vụ con"
			|sub_service|service|cost|status|
			|Làm móng|Làm đẹp|70000|ACTIVE|
			|Làm tóc|Làm đẹp|80000|ACTIVE|
			|Trang điểm|Làm đẹp|90000|ACTIVE|
		Then I click add service "Thêm dịch vụ con"
		And I see service information "Thông tin dịch vụ"
		And I click general information "Thông tin chung"
		And I create "Tạo"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of service
		And I check permission "service-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/service"
		And I see table service "Dịch vụ"
			|service|icon|costSuggestion|status|weight|
			|Dọn dẹp nhà||50000|ACTIVE|1|
			|Vệ sinh máy lạnh||100000|ACTIVE|2|
		Then I click add service "Thêm dịch vụ"
		And I see service information "Thông tin dịch vụ"
		And I click general information "Thông tin chung"
		And I create "Tạo"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Tạo dịch vụ thành công"
		And I go to website with domain "http://192.168.1.123:4000/sub-service"
		And I see table sub service "Dịch vụ con"
			|sub_service|service|cost|status|
			|Làm móng|Làm đẹp|70000|ACTIVE|
			|Làm tóc|Làm đẹp|80000|ACTIVE|
			|Trang điểm|Làm đẹp|90000|ACTIVE|
		Then I click add service "Thêm dịch vụ con"
		And I see service information "Thông tin dịch vụ"
		And I click general information "Thông tin chung"
		And I create "Tạo"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Tạo dịch vụ thành công"

	Scenario: Test not have permission to read of activation code
		And I uncheck permission "activationCode-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-activation"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test not have permission to read of activation code
		And I uncheck permission "activationCode-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-activation"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of activation code
		And I check permission "activationCode-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/user-activation"
		And I see table activate code "Số điện thoại"
			|phone_number|activate_code|time_build|times_send|
			|0993888999|7477|2016/04/27 22:35|1|
			|0908222288|4509|2016/04/26 22:30|0|

	Scenario: Test not have permission to read of promotion code
		And I uncheck permission "promotionCode-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/promotion-code"
		And I see permission deny in page "PERMISSION DENY"
		
	Scenario: Test have permission to read of promotion code
		And I check permission "promotionCode-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/promotion-code"
		And I see table promotion code "code"
			|code|description|promotion|target|value_type|value|start_date|end_date|createdAt|limit|
			|06t8c78m|Service provider sign up Promotion||TASKER||0|22/04/2016 00:00|22/06/2016 00:00|23/04/2016 09:47||

	Scenario: Test not have permission to write of promotion code
		And I uncheck permission "promotionCode-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/promotion-code"
		And I see table promotion code "code"
			|code|description|promotion|target|value_type|value|start_date|end_date|createdAt|limit|
			|06t8c78m|Service provider sign up Promotion||TASKER||0|22/04/2016 00:00|22/06/2016 00:00|23/04/2016 09:47||
		And I click add code "Thêm mã khuyến mãi"
		And I see dialog "Create Promotion Code"
		Then I enter input with value "12345611" and id ".1.1.0.0.1.0.1.0"
		And I see selectbox "Type Of Promotion:"
		Then I click on selectbox ".1.1.0.0.1.1.1.0"
		Then I see option "NEW" and i click it
		And I see selectbox "Type:"
		Then I click on selectbox ".1.1.0.0.1.2.1.0"
		Then I see option "MONEY" and i click it
		And I see textfield "Value:"
		Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
		And I see textfield "description:"
		Then I enter input with value "create new promotion code 1" and id ".1.1.0.0.1.4.1.0"
		And I see selectbox "Target:"
		Then I click on selectbox ".1.1.0.0.1.5.1.0"
		Then I see option "BOTH" and i click it
		And I see textfield "Date:"
		Then I see input start date and I set it with value "07/09/2016"
		Then I see input end date and I set it with value "07/12/2016"
		And I see textfield "limit:"
		Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
		And I click create "Create"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of promotion code
		And I check permission "promotionCode-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/promotion-code"
		And I see table promotion code "code"
			|code|description|promotion|target|value_type|value|start_date|end_date|createdAt|limit|
			|06t8c78m|Service provider sign up Promotion||TASKER||0|22/04/2016 00:00|22/06/2016 00:00|23/04/2016 09:47||
		And I click add code "Thêm mã khuyến mãi"
		And I see dialog "Create Promotion Code"
		Then I enter input with value "truongbd" and id ".1.1.0.0.1.0.1.0"
		And I see selectbox "Type Of Promotion:"
		Then I click on selectbox ".1.1.0.0.1.1.1.0"
		Then I see option "NEW" and i click it
		And I see selectbox "Type:"
		Then I click on selectbox ".1.1.0.0.1.2.1.0"
		Then I see option "MONEY" and i click it
		And I see textfield "Value:"
		Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
		And I see textfield "description:"
		Then I enter input with value "create new promotion code 1" and id ".1.1.0.0.1.4.1.0"
		And I see selectbox "Target:"
		Then I click on selectbox ".1.1.0.0.1.5.1.0"
		Then I see option "BOTH" and i click it
		And I see textfield "Date:"
		Then I see input start date and I set it with value "07/09/2016"
		Then I see input end date and I set it with value "07/12/2016"
		And I see textfield "limit:"
		Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
		And I click create "Create"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Tạo Mã khuyến mãi thành công"

	Scenario: Test not have permission to read of delete user
		And I uncheck permission "deleteList-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/delete-user"
		And I see permission deny in page "PERMISSION DENY"
		
	Scenario: Test have permission to read of delete user
		And I check permission "deleteList-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/delete-user"
		And I see list phone number "Danh sách số điện thoại"

	Scenario: Test not have permission to write of delete user
		And I uncheck permission "deleteList-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/delete-user"
		And I set phone number of input "01655819807"
		And I click add "Thêm"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of delete user
		And I check permission "deleteList-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/delete-user"
		And I set phone number of input "01655819807"
		And I click add "Thêm"
		And I see phone number in list "01655819807"

	Scenario: Test not have permission to delete of delete user
		And I uncheck permission "deleteList-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/delete-user"
		And I see list phone number "Danh sách số điện thoại"
		And I click delete "X"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to delete of delete user
		And I check permission "deleteList-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/delete-user"
		And I see list phone number "Danh sách số điện thoại"
		And I click delete "X"
		And I not see phone number in list

	Scenario: Test not have permission to read of deposit
		And I uncheck permission "deposit-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I click tasker with time build "27/04/2016 15:38"
		And I not see element deposit "Nạp tiền"

	Scenario: Test have permission to read of deposit
		And I check permission "deposit-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I click tasker with time build "27/04/2016 15:38"
		And I see element deposit "Nạp tiền"

	Scenario: Test not have permission to read of company
		And I uncheck permission "company-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/company"
		And I see permission deny in page "PERMISSION DENY"

	Scenario: Test have permission to read of company
		And I check permission "company-read"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/company"
		And I see table company "Company List"
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải	|0908990768||ACTIVE|0 VND|23/04/2016 11:43|

	Scenario: Test not have permission to write of company
		And I uncheck permission "company-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/company"
		And I see table company "Company List"
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải	|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		And I click company with status "ACTIVE"
		And I see dialog information "Thông tin công ty"
		And I click verify company "Verify Company"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to write of company
		And I check permission "company-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/company"
		And I see table company "Company List"
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải	|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		And I click company with status "ACTIVE"
		And I see dialog information "Thông tin công ty"
		And I click verify company "Verify Company"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Xác thực công ty thành công"

	Scenario: Test not have permission to delete of company
		And I uncheck permission "company-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/company"
		And I see table company "Company List"
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải	|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		And I click company with status "ACTIVE"
		And I see dialog information "Thông tin công ty"
		And I click remove company "Remove Company Type"
		And I see accept and I click accept "Xác nhận"
		And I see dialog error permission deny "PERMISSION DENY"

	Scenario: Test have permission to delete of company
		And I check permission "company-delete"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/company"
		And I see table company "Company List"
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải	|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		And I click company with status "ACTIVE"
		And I see dialog information "Thông tin công ty"
		And I click remove company "Remove Company Type"
		And I see accept and I click accept "Xác nhận"
		And I see dialog success "Bỏ công ty thành công"

	@watch
	Scenario: Test not have permission to write of change address tasker
		And I uncheck permission "changeTaskerAddress-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I click tasker with status "ACTIVE"
		And I click address
		And I see dialog error permission deny "PERMISSION DENY"
		
	@watch
	Scenario: Test have permission to write of change address tasker
		And I check permission "changeTaskerAddress-write"
		Then I click save "Lưu"
		And I see accept and I click accept "Xác nhận"
		And I go to website with domain "http://192.168.1.123:4000/tasker"
		And I click tasker with status "ACTIVE"
		And I click address
		And I set value "5B03-15 Sky Garden 2, Phạm Văn Nghị Nam, Phú Mỹ Hưng, P. Tân Phong, Quận 7, TpHCM"
		