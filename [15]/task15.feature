Feature: Test Create Promotion Code
  As a user of the site
  So that I can create some promotion code

    Scenario:Create a new promotion code with full information and promotion code not contain character space. (ex:"123456")
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
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
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      Then I see dialog "Success"

    Scenario:Create a new promotion code with full information and promotion code not contain character space. (ex:"123456")
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "123 4561" and id ".1.1.0.0.1.0.1.0"
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
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      Then I see dialog "Error"

    Scenario:[Pass] Create a new promotion code with full information and start date < end date.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111" and id ".1.1.0.0.1.0.1.0"
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
      Then I see input start date and I set it with value "07/10/2016"
      Then I see input end date and I set it with value "07/20/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      Then I see dialog "Success"  

    Scenario:[Pass] Create a new promotion code with full information and start date = end date.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111a" and id ".1.1.0.0.1.0.1.0"
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
      Then I see input start date and I set it with value "07/10/2016"
      Then I see input end date and I set it with value "07/10/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      Then I see dialog "Success"


    Scenario:[Pass] Create a new promotion code with full information and start date > end date.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111ab" and id ".1.1.0.0.1.0.1.0"
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
      Then I see input start date and I set it with value "07/20/2016"
      Then I see input end date and I set it with value "07/08/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"
      Then I see dialog "Success"


    Scenario:[Pass] Create a new promotion code with textfield Type Of Promotion is null value.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111ab" and id ".1.1.0.0.1.0.1.0"
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
      Then I see input start date and I set it with value "07/20/2016"
      Then I see input end date and I set it with value "07/08/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Error" contain content "Bạn nhập thiếu thông tin"

    Scenario:[Pass] Create a new promotion code with textfield "Type" is null value.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111ab" and id ".1.1.0.0.1.0.1.0"
      And I see selectbox "Type Of Promotion:"
      Then I click on selectbox ".1.1.0.0.1.1.1.0"
      Then I see option "NEW" and i click it
      And I see textfield "Value:"
      Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
      And I see textfield "description:"
      Then I enter input with value "create new promotion code 1" and id ".1.1.0.0.1.4.1.0"
      And I see selectbox "Target:"
      Then I click on selectbox ".1.1.0.0.1.5.1.0"
      Then I see option "BOTH" and i click it
      And I see textfield "Date:"
      Then I see input start date and I set it with value "07/20/2016"
      Then I see input end date and I set it with value "07/08/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Error" contain content "Bạn nhập thiếu thông tin"

    Scenario:[Pass] Create a new promotion code with textfield "Value" is null value.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111ab" and id ".1.1.0.0.1.0.1.0"
      And I see selectbox "Type Of Promotion:"
      Then I click on selectbox ".1.1.0.0.1.1.1.0"
      Then I see option "NEW" and i click it
      And I see selectbox "Type:"
      Then I click on selectbox ".1.1.0.0.1.2.1.0"
      Then I see option "MONEY" and i click it
      And I see textfield "description:"
      Then I enter input with value "create new promotion code 1" and id ".1.1.0.0.1.4.1.0"
      And I see selectbox "Target:"
      Then I click on selectbox ".1.1.0.0.1.5.1.0"
      Then I see option "BOTH" and i click it
      And I see textfield "Date:"
      Then I see input start date and I set it with value "07/20/2016"
      Then I see input end date and I set it with value "07/08/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Error" contain content "Bạn nhập thiếu thông tin"

    Scenario:[Pass] Create a new promotion code with textfield "Date" is null value.
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111ab" and id ".1.1.0.0.1.0.1.0"
      And I see selectbox "Type Of Promotion:"
      Then I click on selectbox ".1.1.0.0.1.1.1.0"
      Then I see option "NEW" and i click it
      And I see textfield "Value:"
      Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
      And I see selectbox "Type:"
      Then I click on selectbox ".1.1.0.0.1.2.1.0"
      Then I see option "MONEY" and i click it
      And I see textfield "description:"
      Then I enter input with value "create new promotion code 1" and id ".1.1.0.0.1.4.1.0"
      And I see selectbox "Target:"
      Then I click on selectbox ".1.1.0.0.1.5.1.0"
      Then I see option "BOTH" and i click it
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Error" contain content "Bạn nhập ngày không đúng"


    Scenario:[Pass] Create a new promotion code with textfield "Type Of Promotion:" is CURRENT
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111ab@" and id ".1.1.0.0.1.0.1.0"
      And I see selectbox "Type Of Promotion:"
      Then I click on selectbox ".1.1.0.0.1.1.1.0"
      Then I see option "CURRENT" and i click it
      And I see textfield "Value:"
      Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
      And I see selectbox "Type:"
      Then I click on selectbox ".1.1.0.0.1.2.1.0"
      Then I see option "MONEY" and i click it
      And I see textfield "description:"
      Then I enter input with value "create new promotion code 1" and id ".1.1.0.0.1.4.1.0"
      And I see selectbox "Target:"
      Then I click on selectbox ".1.1.0.0.1.5.1.0"
      Then I see option "BOTH" and i click it
      And I see textfield "Date:"
      Then I see input start date and I set it with value "07/10/2016"
      Then I see input end date and I set it with value "07/21/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

    Scenario:[Pass] Create a new promotion code with textfield "Type" is PERCENTAGE
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432111a |b@" and id ".1.1.0.0.1.0.1.0"
      And I see selectbox "Type Of Promotion:"
      Then I click on selectbox ".1.1.0.0.1.1.1.0"
      Then I see option "CURRENT" and i click it
      And I see textfield "Value:"
      Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
      And I see selectbox "Type:"
      Then I click on selectbox ".1.1.0.0.1.2.1.0"
      Then I see option "PERCENTAGE" and i click it
      And I see textfield "description:"
      Then I enter input with value "create new promotion code 2" and id ".1.1.0.0.1.4.1.0"
      And I see selectbox "Target:"
      Then I click on selectbox ".1.1.0.0.1.5.1.0"
      Then I see option "BOTH" and i click it
      And I see textfield "Date:"
      Then I see input start date and I set it with value "07/10/2016"
      Then I see input end date and I set it with value "07/21/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"

    @watch
    Scenario:[Pass] Create a new promotion code with textfield "Type" is TASKER
      Given I have visited localhost Promotion
      Then I see page Promotion and I see button "Thêm mã khuyến mãi"
      And I click on button "Thêm mã khuyến mãi"
      Then I see dialog "Create Promotion Code"
      And I see textfield "Code:"
      Then I enter input with value "65432!@111a |b@" and id ".1.1.0.0.1.0.1.0"
      And I see selectbox "Type Of Promotion:"
      Then I click on selectbox ".1.1.0.0.1.1.1.0"
      Then I see option "CURRENT" and i click it
      And I see textfield "Value:"
      Then I enter input with value "10000" and id ".1.1.0.0.1.3.1.0"
      And I see selectbox "Type:"
      Then I click on selectbox ".1.1.0.0.1.2.1.0"
      Then I see option "PERCENTAGE" and i click it
      And I see textfield "description:"
      Then I enter input with value "create new promotion code 2" and id ".1.1.0.0.1.4.1.0"
      And I see selectbox "Target:"
      Then I click on selectbox ".1.1.0.0.1.5.1.0"
      Then I see option "TASKER" and i click it
      And I see textfield "Date:"
      Then I see input start date and I set it with value "07/10/2016"
      Then I see input end date and I set it with value "07/21/2016"
      And I see textfield "limit:"
      Then I enter input with value "1520" and id ".1.1.0.0.1.7.1.0"
      And I click on button "Create"
      Then I see dialog "Xác nhận"
      Then I click on button "Xác nhận"