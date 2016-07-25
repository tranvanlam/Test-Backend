Feature: Test Others
  As a user of the site
  So that I can modify some other

    @watch
    Scenario:[Pass] Test update textfield type_account is "Tài khoản chính"
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản chính" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "0002" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "07232016" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"

    @watch
    Scenario:[Pass] Test update textfield type_account is "Tài khoản khuyến mãi"
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản khuyến mãi" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "0002" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "07232016" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"

    @watch
    Scenario:[Pass] Test update textfield type_account is ""
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option ".2.1.0.0.1.2.1.0.0" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "0002" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "07232016" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Error"
      
    @watch
    Scenario:[Pass] Test update the textfield invoice_number is digits ex:"1988"
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản khuyến mãi" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "1988" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "07232016" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"

    @watch
    Scenario:[Pass] Test update the textfield invoice_number is text ex:"abc"
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản chính" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "abc" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "07232016" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Error"

    @watch
    Scenario:[Pass] Test update the textfield invoice_number is null value
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản chính" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "07232016" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Error"

    @watch
    Scenario:[Pass] Test update the textfield "Cách nạp:" is "Tiền mặt"
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản khuyến mãi" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "1988" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Tiền mặt" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/23/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "ABC" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"

    @watch
    Scenario:[Pass] Test update the textfield "Cách nạp:" is "Chuyển khoản"
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản khuyến mãi" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "1988" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/22/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "DEF" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"

    @watch
    Scenario:[Pass] Test update the textfield "Cách nạp:" is null value
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản khuyến mãi" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "1988" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option ".2.1.0.0.1.5.1.0.0" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/22/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "DEF" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      Then I see dialog "Error"

    @watch
    Scenario:[Pass] Test update the textfield "Nạp tiền lúc:" is "07/22/2013" and textfield "Người thu:" is text
      Given I have visited localhost DepositHistory
      Then I see table 
        |name|phone_number|type_account|amount|invoice_number|
        |Tên|Số điện thoại|Loại tài khoản|Số tiền|Số hóa đơn|
      Then I see the first user and i click it
      And I see dialog "Deposit Detail"
      Then I see textfield "Tên"
      And I see textfield "Số điện thoại:"
      Then I see textfield "Loại tài khoản:"
      And I select option "Tài khoản khuyến mãi" with id ".2.1.0.0.1.2.1.0"
      Then I see textfield "Số tiền:"
      And I see textfield "Số hóa đơn:"
      Then I set input with value "1988" with id ".2.1.0.0.1.4.1.0"
      And I see textfield "Cách nạp:"
      And I select option "Chuyển khoản" with id ".2.1.0.0.1.5.1.0"
      Then I see textfield "Nạp tiền lúc:"
      Then I set input with value "07/22/2016" with id ".2.1.0.0.1.6.1.0"
      Then I see textfield "Người thu:"
      And I set input with value "LAM" with id ".2.1.0.0.1.7.1.0"
      Then I click on button "Update"
      And I see dialog "Xác nhận"
      And I click on button "Xác nhận"
      Then I see dialog "Success"


