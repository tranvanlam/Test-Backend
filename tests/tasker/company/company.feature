Feature: Test Tasker
	As a user

	Scenario: Test visited company backend
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click company list "Company List"
		Then I see table company
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải|0908990768||ACTIVE|0 VND|23/04/2016 11:43|

	Scenario: Test create company with set phone number exist on database of input field and new company
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click create company "Create Company"
		Then I set phone number representative company "01662849486"
		And I see table
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
		Then I click choose tasker "Chọn nhân viên"
		And I set phone number tasker exist with tasker greater than one "01662849486" "01208247585"
		And I see table list employee
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
			||LÊ HỒ BẢO YẾN|01208247585|ACTIVE|
		Then I click accept in page "Xác nhận"
		And I see table representative company:
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
		And I see list employee:
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
			||LÊ HỒ BẢO YẾN|01208247585|ACTIVE|
		Then I click complete "Hoàn tất"
		And I see dialog accept and I click accept "Xác nhận"
		And I see dialog success "Success"

	Scenario: Test create company with set phone number exist on database of input field and exist company
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click create company "Create Company"
		Then I set phone number representative company "01662849486"
		And I see table
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
		Then I click choose tasker "Chọn nhân viên"
		And I set phone number tasker exist with tasker greater than one "01662849486" "01208247585"
		And I see table list employee
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
			||LÊ HỒ BẢO YẾN|01208247585|ACTIVE|
		Then I click accept in page "Xác nhận"
		And I see table representative company:
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
		And I see list employee:
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
			||LÊ HỒ BẢO YẾN|01208247585|ACTIVE|
		Then I click complete "Hoàn tất"
		And I see dialog accept and I click accept "Xác nhận"
		And I see dialog error "Tasker Thành is company account [IS_COMPANY]"

	Scenario: Test delete company
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click company list "Company List"
		Then I see table company
			|name|phone_number|avatar|status|main_account|time_build|
			|Thành|	01662849486||ACTIVE|0 VND|28/04/2016 05:49|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		Then I click company "Thành" "01662849486"
		Then I see information company "Thông tin công ty"
		Then I click remove company "Remove Company Type"
		And I see dialog accept and I click accept "Xác nhận"
		And I see dialog success "Success"

	Scenario: Test create company with set phone number not exist on database
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click create company "Create Company"
		Then I set phone number representative company "01662849480"
		And I see error "Không tìm thấy"

	Scenario: Test create company with choose greater than one representative
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click create company "Create Company"
		Then I click show list account
		And I see table tasker
			|name|phone_number|service|status|time_build|
			|Do Hang|0903109978|Vệ sinh máy lạnh|LOCKED|28/04/2016 20:19|
			|TRAN QUOC BAO CHAU|0982876871|Dọn dẹp nhà|ACTIVE|28/04/2016 16:32|
		Then I check two representative
		And I click complete "Hoàn tất"
		And I see dialog error "Bạn chỉ được chọn 1 nhân viên để đại diện công ty"

	Scenario: Test create company with choose representative is employee of other company
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click create company "Create Company"
		Then I set phone number representative company "0904092041"
		And I see dialog error "Error"

	Scenario: Test create company with choose employee is representative of other company
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click create company "Create Company"
		Then I set phone number representative company "01662849486"
		And I see table
			|avatar|name |phone_number|status|
			|      |Thành|01662849486 |ACTIVE|
		Then I click choose tasker "Chọn nhân viên"
		And I set phone number tasker exist with tasker is representative of other company "0917547133"
		And I see dialog error "Error"


	Scenario: Test company information element list employee
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click company list "Company List"
		Then I see table company
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		Then I click company "Nguyễn Tấn Thành" "0917547133"
		Then I see information company "Thông tin công ty"
		Then I click list employee "Danh sách nhân viên"
		And I see list employee
			|name|phone_number|avatar|service|status|time_build|
			|Dao Van Cong|0904092041|||ACTIVE|26/04/2016 16:37|

	@watch
	Scenario: Test company with change list employee and allow employees to receive their own jobs
		Given visited backend
		When click tasker "Tasker"
		When click company table "Company"
		Then I click company list "Company List"
		Then I see table company
			|name|phone_number|avatar|status|main_account|time_build|
			|Nguyễn Tấn Thành|0917547133||ACTIVE|0 VND|26/04/2016 16:28|
			|Lê Viết Hải|0908990768||ACTIVE|0 VND|23/04/2016 11:43|
		Then I click company "Nguyễn Tấn Thành" "0917547133"
		Then I see information company "Thông tin công ty"
		Then I click list employee "Danh sách nhân viên"
		And I see list employee
			|name|phone_number|avatar|service|status|time_build|
			|Dao Van Cong|0904092041|||ACTIVE|26/04/2016 16:37|
		And I click change list employee "Thay đổi danh sách nhân viên"
		And i see update company "Update Company"
		Then I click accept in page "Xác nhận"
		And I see table representative company:
			|avatar|name |phone_number|status|
			|      |Nguyễn Tấn Thành|0917547133 |ACTIVE|
		And I see list employee:
			|avatar|name |phone_number|status|
			||Dao Van Cong|0904092041|ACTIVE|
		Then I check checkbox allow employees to receive their own jobs
		Then I click complete "Hoàn tất"
		And I see dialog accept and I click accept "Xác nhận"
		And I see dialog success "Success"