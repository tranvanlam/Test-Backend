Feature: Test asker
	As a user
	I want see information asker in backend

	@watch
	Scenario: Test element general information asker
		Given visited asker backend
		Then I click choose asker "5szp9ab4LWB7yttxC" "29/04/2016 09:34"
		Then I click choose general information "Thông tin chung"
		And I see all information including name, phone number, address "Phuong" "0938609900" "Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam"

	@watch
	Scenario: Test element history post asker
		Given visited asker backend
		Then I click choose asker "5szp9ab4LWB7yttxC" "29/04/2016 09:34"
		Then I click choose history "Lịch sử"
		And I see table works
			|service    |note|time_work            |address                                              |price |time_post       |evaluate|status  |
			|Dọn dẹp nhà|    |29/04/2016 10:10 - 2h|Grandview A, Tân Phong, Quận 7, Hồ Chí Minh, Việt Nam|100000|2016/04/29 09:35|        |CONFIRMED|

	@watch
	Scenario: Test element accounts asker
		Given visited asker backend
		Then I click choose asker "5szp9ab4LWB7yttxC" "29/04/2016 09:34"
		Then I click choose account "Tài khoản"
		And I see account name "Phuong - 0938609900"
		And I see main account "Tài khoản chính:" "0 VND"
		And I see free available account "Tài khoản khuyến mãi:" "200,000 VND"

	@watch
	Scenario: Test element other asker
		Given visited asker backend
		Then I click choose asker "5szp9ab4LWB7yttxC" "29/04/2016 09:34"
		Then I click choose other "Khác"


	@watch
	Scenario: Test element block asker
		Given visited asker backend
		Then I see table with asker "Phuong mai"
			|id               |name      |phone_number|status|time_build      |referral_code|friend_code|
			|XEdkncWTwZ7AiscTn|Phuong mai|0908228823  |ACTIVE|27/04/2016 19:05|             |           |
		Then I click choose asker "Phuong mai" "27/04/2016 19:05"
		When I click choose block "Block"
		Then I see dialog block account "Khóa tài khoản"
		And I set value of textfiled reason "Beautiful"
		Then I click block asker "Block"
		And I see dialog accept and click accept "Xác nhận"
		And I see dialog success "Success"
		And I see table with asker "Phuong mai" status is locked
			|id               |name      |phone_number|status|time_build      |referral_code|friend_code|
			|XEdkncWTwZ7AiscTn|Phuong mai|0908228823  |LOCKED|27/04/2016 19:05|             |           |
	@watch
	Scenario: Test element unblock asker
		Given visited asker backend
		And I see table with asker "Phuong mai" status is locked
			|id               |name      |phone_number|status|time_build      |referral_code|friend_code|
			|XEdkncWTwZ7AiscTn|Phuong mai|0908228823  |LOCKED|27/04/2016 19:05|             |           |
		Then I click choose asker "Phuong mai" "27/04/2016 19:05"
		When I click choose activate "Activate"
		And I see dialog accept and click accept "Xác nhận"
		Then I see table with asker "Phuong mai"
			|id               |name      |phone_number|status|time_build      |referral_code|friend_code|
			|XEdkncWTwZ7AiscTn|Phuong mai|0908228823  |ACTIVE|27/04/2016 19:05|             |           |
