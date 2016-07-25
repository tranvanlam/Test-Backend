Feature: Test Sub Services
  As a user of the site
  So that I can modify some sub services

    Scenario:[Pass] Create a new sub-service with full information.
      Given I have visited localhost SubService
      Then I see page SubService and I see button "Thêm dịch vụ con"
      And I click on button "Thêm dịch vụ con"
      Then I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "Sub-Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value "Sub-Home Clearning" and id ".1.1.0.0.1.0.1.0.1.1"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value "하위 홈 클리닝" and id ".1.1.0.0.1.0.1.0.2.1"
      And I see textfield "Dịch vụ:"
      Then I click on selectbox ".1.1.0.0.1.0.1.0.3.1"
      Then I see option "Dọn dẹp nhà" and i click it
      And I see textfield "Giá:"
      Then I enter input with value "123" and id ".1.1.0.0.1.0.1.0.4.1"
      And I click on button "Tạo"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

    Scenario:[Failed] Create a new sub-service with empty all information.
      Given I have visited localhost SubService
      Then I see page SubService and I see button "Thêm dịch vụ con"
      And I click on button "Thêm dịch vụ con"
      Then I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "" and id ".1.1.0.0.1.0.1.0.0.1"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value "" and id ".1.1.0.0.1.0.1.0.1.1"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value "" and id ".1.1.0.0.1.0.1.0.2.1"
      And I see textfield "Giá:"
      Then I enter input with value "123" and id ".1.1.0.0.1.0.1.0.4.1"
      And I click on button "Tạo"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

   Scenario:[Failed] Create a new sub-service with textfield "Tên (Tiếng Việt):" is null
      Given I have visited localhost SubService
      Then I see page SubService and I see button "Thêm dịch vụ con"
      And I click on button "Thêm dịch vụ con"
      Then I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "" and id ".1.1.0.0.1.0.1.0.0.1"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value "Sub-En" and id ".1.1.0.0.1.0.1.0.1.1"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value "하위 홈 클리닝" and id ".1.1.0.0.1.0.1.0.2.1"
      And I see textfield "Dịch vụ:"
      Then I click on selectbox ".1.1.0.0.1.0.1.0.3.1"
      Then I see option "Sửa ống nước" and i click it
      And I see textfield "Giá:"
      Then I enter input with value "123" and id ".1.1.0.0.1.0.1.0.4.1"
      And I click on button "Tạo"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

   Scenario:[Failed] Create a new sub-service with textfield "Tên (Tiếng Anh):" is null
      Given I have visited localhost SubService
      Then I see page SubService and I see button "Thêm dịch vụ con"
      And I click on button "Thêm dịch vụ con"
      Then I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "Sub-TV" and id ".1.1.0.0.1.0.1.0.0.1"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value " " and id ".1.1.0.0.1.0.1.0.1.1"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value "하위 홈 클리닝" and id ".1.1.0.0.1.0.1.0.2.1"
      And I see textfield "Dịch vụ:"
      Then I click on selectbox ".1.1.0.0.1.0.1.0.3.1"
      Then I see option "Sửa ống nước" and i click it
      And I see textfield "Giá:"
      Then I enter input with value "123" and id ".1.1.0.0.1.0.1.0.4.1"
      And I click on button "Tạo"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

   Scenario:[Failed] Create a new sub-service with textfield "Tên (Tiếng Hàn):" is null
      Given I have visited localhost SubService
      Then I see page SubService and I see button "Thêm dịch vụ con"
      And I click on button "Thêm dịch vụ con"
      Then I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "Sub-TV" and id ".1.1.0.0.1.0.1.0.0.1"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value "Sub-En" and id ".1.1.0.0.1.0.1.0.1.1"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value " " and id ".1.1.0.0.1.0.1.0.2.1"
      And I see textfield "Dịch vụ:"
      Then I click on selectbox ".1.1.0.0.1.0.1.0.3.1"
      Then I see option "Sửa ống nước" and i click it
      And I see textfield "Giá:"
      Then I enter input with value "123" and id ".1.1.0.0.1.0.1.0.4.1"
      And I click on button "Tạo"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

   Scenario:[Failed] Create a new sub-service with textfield "Giá: " is null
      Given I have visited localhost SubService
      Then I see page SubService and I see button "Thêm dịch vụ con"
      And I click on button "Thêm dịch vụ con"
      Then I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "Sub-TV" and id ".1.1.0.0.1.0.1.0.0.1"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value "Sub-En" and id ".1.1.0.0.1.0.1.0.1.1"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value "Sub-Ko" and id ".1.1.0.0.1.0.1.0.2.1"
      And I see textfield "Dịch vụ:"
      Then I click on selectbox ".1.1.0.0.1.0.1.0.3.1"
      Then I see option "Sửa ống nước" and i click it
      And I see textfield "Giá:"
      Then I enter input with value "" and id ".1.1.0.0.1.0.1.0.4.1"
      And I click on button "Tạo"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

   Scenario:[Pass] Active sub-service.
      Given I have visited localhost SubService
      Then I see sub service "Dịch vụ khác" and i click it
      And I see dialog "Thông tin dịch vụ"
      Then I click on button "Đóng dịch vụ"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"

   Scenario:[Pass] Active sub-service.
      Given I have visited localhost SubService
      Then I see sub service "Dịch vụ khác" and i click it
      And I see dialog "Thông tin dịch vụ"
      Then I click on button "Mở dịch vụ"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"

   Scenario:[Pass] Test update the textfield "Tên (Tiếng Việt):" in a sub-service.
      Given I have visited localhost SubService
      Then I see status is "ACTIVE" and I click it
      And I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Việt):"
      Then I enter input with value "Sub-TV" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I click on button "Cập Nhật"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"

   Scenario:[Pass] Test update the textfield "Tên (Tiếng Anh):" in a sub-service.
      Given I have visited localhost SubService
      Then I see status is "ACTIVE" and I click it
      And I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Anh):"
      Then I enter input with value "Sub-En" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I click on button "Cập Nhật"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"

   Scenario:[Pass] Test update the textfield "Tên (Tiếng Hàn):" in a sub-service.
      Given I have visited localhost SubService
      Then I see status is "ACTIVE" and I click it
      And I see dialog "Thông tin dịch vụ"
      And I see textfield "Tên (Tiếng Hàn):"
      Then I enter input with value "Sub-Ko" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I click on button "Cập Nhật"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"

   Scenario:[Pass] Test update the textfield "Giá:" in a sub-service.
      Given I have visited localhost SubService
      Then I see status is "ACTIVE" and I click it
      And I see dialog "Thông tin dịch vụ"
      And I see textfield "Giá:"
      Then I enter input with value "1234" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I click on button "Cập Nhật"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"

   @watch
   Scenario:[Pass] Test update the textfield "Dịch vụ:" in a sub-service.
      Given I have visited localhost SubService
      Then I see status is "ACTIVE" and I click it
      And I see dialog "Thông tin dịch vụ"
       And I see textfield "Dịch vụ:"
      Then I click on selectbox ".1.1.0.0.1.0.1.0.3.1"
      Then I see option "Sửa ống nước" and i click it
      Then I click on button "Cập Nhật"
      Then I see dialog "Xác nhận"
      And I click on button "Xác nhận"            
      
