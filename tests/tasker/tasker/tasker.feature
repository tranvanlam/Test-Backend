Feature: Test tasker
	As a user

	@watch
	Scenario: Test visited tasker backend
		Given visited backend
		When click tasker "Tasker"
		When click tasker table "Tasker"
		Then I see table tasker
			|name   |phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978  ||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
			|TRAN QUOC BAO CHAU|0982876871||Dọn dẹp nhà|	ACTIVE|28/04/2016 16:32|

	@watch
	Scenario: Test element general information tasker
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose general information "Thông tin chung"
		And I see information name and phone number "TRAN QUOC BAO CHAU" "0982876871"

	@watch
	Scenario: Test element update personal information tasker
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose general information "Thông tin chung"
		And I see information name and phone number "TRAN QUOC BAO CHAU" "0982876871"
		Then I set value email "tranquocbaochau@gmail.com"
		Then I set value address "182 Triệu Quang Phục, Hồ Chí Minh, Việt Nam"
		Then I set value introdue "Xin chao , toi duoc 45 tuoi , da co kinh nghiem lam viec lau nam , trung thuc va trach nhiem cao , vui ve va than thien ."
		And I click update personal information "Cập nhật thông tin cá nhân"
		Then I see dialog accept and I click accept "Xác nhận"
		Then I see dialog success "Success"

	@watch
	Scenario: Test element update service
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose service "Dịch vụ"
		And I click tick service "Giữ trẻ"
		And I click update service "Cập nhật dịch vụ"
		Then I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"
		And I reload asker and see table
			|name   |phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978  ||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
			|TRAN QUOC BAO CHAU|0982876871||Dọn dẹp nhà, Giữ trẻ|	ACTIVE|28/04/2016 16:32|

	@watch
	Scenario: Test element reset update service
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose service "Dịch vụ"
		And I click tick service "Giữ trẻ"
		And I click update service "Cập nhật dịch vụ"
		Then I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"
		And I reload asker and see table
			|name   |phone_number|avatar|service|status|time_build|
			|Do Hang|0903109978  ||Vệ sinh máy lạnh|UNVERIFIED|28/04/2016 20:19|
			|TRAN QUOC BAO CHAU|0982876871||Dọn dẹp nhà|	ACTIVE|28/04/2016 16:32|

	@watch
	Scenario: Test element work history
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose work history "Lịch sử làm việc"
		And I see table work history
			|service    |note|time_work|address|price|time_post|evaluate|status|
			|Dọn dẹp nhà||29/04/2016 08:00 - 2h|634 Điện Biên Phủ, phường 11, Hồ Chí Minh, Việt Nam|100000|2016/04/28 15:22||CONFIRMED|

	@watch
	Scenario: Test element main recharge
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose recharge "Nạp tiền"
		And I see name and phone number "TRAN QUOC BAO CHAU - 0982876871"
		And I see main account with value "0 VND"
		And I see free available account with value "200,000 VND"
		Then I click choose main account in scroll view "Tài khoản chính"
		And I click choose cash "Tiền mặt"
		And I set value amount of money "100000"
		And I set date
		Then I click recharge "Nạp tiền"
		Then I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"

	@watch
	Scenario: Test element main recharge with reset money
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose recharge "Nạp tiền"
		And I see name and phone number "TRAN QUOC BAO CHAU - 0982876871"
		And I see main account with value "100,000 VND"
		And I see free available account with value "200,000 VND"
		Then I click choose main account in scroll view "Tài khoản chính"
		And I click choose cash "Tiền mặt"
		And I set value amount of money "-100000"
		And I set date
		Then I click recharge "Nạp tiền"
		Then I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"

	@watch
	Scenario: Test element free available recharge
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose recharge "Nạp tiền"
		And I see name and phone number "TRAN QUOC BAO CHAU - 0982876871"
		And I see main account with value "0 VND"
		And I see free available account with value "200,000 VND"
		Then I click choose main account in scroll view "Tài khoản khuyến mãi"
		And I click choose cash "Tiền mặt"
		And I set value amount of money "100000"
		And I set date
		Then I click recharge "Nạp tiền"
		Then I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"
	@watch
	Scenario: Test element free available recharge with reset money
		Given visited tasker backend
		Then I click choose tasker "TRAN QUOC BAO CHAU" "EwYhXy3rxKGJ2ipqC" "28/04/2016 16:32"
		Then I click choose recharge "Nạp tiền"
		And I see name and phone number "TRAN QUOC BAO CHAU - 0982876871"
		And I see main account with value "0 VND"
		And I see free available account with value "300,000 VND"
		Then I click choose main account in scroll view "Tài khoản khuyến mãi"
		And I click choose cash "Tiền mặt"
		And I set value amount of money "-100000"
		And I set date
		Then I click recharge "Nạp tiền"
		Then I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"

	@watch
	Scenario: I can not test element transaction history because database constant

	@watch
	Scenario: I can not test element other because database constant

	@watch
	Scenario: Test element block tasker
		Given visited tasker backend
		Then I see table with tasker "Phan Thị Kim Phước"
			|name   |phone_number|avatar|service|status|time_build|
			|Phan Thị Kim Phước|01647051715||Dọn dẹp nhà|	ACTIVE|28/04/2016 09:47|
		Then I click choose tasker "Phan Thị Kim Phước" "QpNCAbiXvv48k4eLB" "28/04/2016 09:47"
		When I click choose block "Block"
		Then I see dialog block account "Khóa tài khoản"
		And I set value of textfiled reason "Beautiful"
		Then I click block tasker "Block"
		And I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"
		And I see table with tasker "Phuong mai" status is locked
			|name   |phone_number|avatar|service|status|time_build|
			|Phan Thị Kim Phước|01647051715||Dọn dẹp nhà|	LOCKED|28/04/2016 09:47|

	@watch
	Scenario: Test element unblock tasker
		Given visited tasker backend
		And I see table with tasker "Phan Thị Kim Phước" status is locked
			|name   |phone_number|avatar|service|status|time_build|
			|Phan Thị Kim Phước|01647051715||Dọn dẹp nhà|	LOCKED|28/04/2016 09:47|
		Then I click choose tasker "Phan Thị Kim Phước" "QpNCAbiXvv48k4eLB" "28/04/2016 09:47"
		When I click choose activate "Activate"
		And I see dialog accept and click accept "Xác nhận"
		Then I see table with tasker "Phan Thị Kim Phước"
			|name   |phone_number|avatar|service|status|time_build|
			|Phan Thị Kim Phước|01647051715||Dọn dẹp nhà|	ACTIVE|28/04/2016 09:47|
