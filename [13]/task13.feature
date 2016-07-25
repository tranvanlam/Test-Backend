Feature: Test Services
  As a user of the site
  So that I can modify some tasker

    Scenario:Change all general information.
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn dẹp nhà 2" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning 2" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미 2" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"

   Scenario:Change all general information with value NULL.
        Given I have visited localhost Services
        Then I see table "Dịch vụ" and I see home cleaning service
        Then I click on home cleaning service title
        And I see title "a=Thông tin chung"
        Then I see title name "Tên (Tiếng Việt):" 
        And I enter name with value "" and id ".1.1.0.0.1.0.1.0.0.1"
        Then I see title name "Tên (Tiếng Anh):" 
        And I enter name with value "" and id ".1.1.0.0.1.0.1.0.1.1"
        Then I see title name "Tên (Tiếng Hàn):" 
        And I enter name with value "" and id ".1.1.0.0.1.0.1.0.2.1"
        Then I see title name "Icon:"
        And I enter name with value "" and id ".1.1.0.0.1.0.1.0.3.1"
        Then I see title name "Giá:"
        And I enter name with value "" and id ".1.1.0.0.1.0.1.0.4.1"
        Then I see title name "weight:"
        And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
        Then I click on button "Cập Nhật"
        And I see dialog "Xác nhận" and i click on button "Xác nhận"
        Then I see error

    Scenario:Change textfield "Tên (Tiếng Việt):" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning 2" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미 2" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see error

    Scenario:Change textfield "Tên (Tiếng Việt):" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "hahaha" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning 2" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미 2" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success

    Scenario:Change textfield "Tên (Tiếng Anh):" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미 2" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see error

    Scenario:Change textfield "Tên (Tiếng Anh):" with value not null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미 2" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success

    Scenario:Change textfield "Tên (Tiếng Hàn):" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see error

    Scenario:Change textfield "Tên (Tiếng Hàn):" with value not null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success

    Scenario:Change textfield "Icon:" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see error


    Scenario:Change textfield "Icon:" with value not null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "60000" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success


    Scenario:Change textfield "Giá:" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see error

    Scenario: Change textfield "Giá:" with number negative ex: -123, -5.....
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "-123" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see error

    Scenario:Change textfield "Giá:" with value not null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "123456" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success

    Scenario:Change textfield "Giá:" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "123456" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success

    Scenario:Change textfield "weight:" with value null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "123456" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success  


    Scenario:Change textfield "weight:" with value not null
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title2
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "123456" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "1" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Cập Nhật"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success  

    Scenario: Test change active to inactive 
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      Then I click on button "Đóng dịch vụ"
      Then I see dialog "h4=Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog success

    Scenario: Test change inactive to active 
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      Then I click on home cleaning service title
      Then I click on button "Mở dịch vụ"
      Then I see dialog "h4=Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog success

    @watch
    Scenario: [Pass] Test add new service with full information.
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      And I click on button "Thêm dịch vụ"
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "Dọn Dẹp Nhà 2" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "Cleaning 2" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "가사 도우미 2" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "http://www.muctim.com.vn/documents/10180/6375905/DongNhi3.JPG/199a3921-02fa-421f-9229-47919aa1e891?t=1423103635195" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "12" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "10" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Tạo"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success

    @watch
    Scenario: [Pass] Test add new service with full information.
      Given I have visited localhost Services
      Then I see table "Dịch vụ" and I see home cleaning service
      And I click on button "Thêm dịch vụ"
      And I see title "a=Thông tin chung"
      Then I see title name "Tên (Tiếng Việt):" 
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.0.1"
      Then I see title name "Tên (Tiếng Anh):" 
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.1.1"
      Then I see title name "Tên (Tiếng Hàn):" 
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.2.1"
      Then I see title name "Icon:"
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.3.1"
      Then I see title name "Giá:"
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.4.1"
      Then I see title name "weight:"
      And I enter name with value "" and id ".1.1.0.0.1.0.1.0.5.1"
      Then I click on button "Tạo"
      And I see dialog "Xác nhận" and i click on button "Xác nhận"
      Then I see dialog success
      