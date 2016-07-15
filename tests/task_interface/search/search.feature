Feature: Task interface test search
  As a user
  I want to search task in Task form on backend

  @watch
  Scenario: Test search by time work
  	Given visited task backend
  	When set time work in input search "29/04/2016 10:10"
  	Then I see the task to find by time work "R4G5qLXEdj8DxaHzR"

  @watch
  Scenario: Test search by name
  	Given visited task backend
  	When set name in input search "Ha"
  	Then I see the task to find by name "KbPmdE7jDtCZPLsGM"

  @watch
  Scenario: Test search by phone number
  	Given visited task backend
  	When set phone number in input search "996339"
  	Then I see the task to find by phone number "wmFqr6p8Q9Ltfgbyw"

  @watch
  Scenario: Test search by address
  	Given visited task backend
  	When set address in input search "Tân Phong, Quận 7"
  	Then I see the task to find by address "j8umkmHrCsfMWenK9"

  @watch
  Scenario: Test search by price-hours
  	Given visited task backend
  	When set price hours in input search "100,000 VND - 2h"
  	Then I see the task to find by price hours "R4G5qLXEdj8DxaHzR	"

  @watch
  Scenario: Test search by time post
  	Given visited task backend
  	When set time post in input search "29/04/2016"
  	Then I see the task to find by time post "wmFqr6p8Q9Ltfgbyw"

  @watch
  Scenario: Test search by status
  	Given visited task backend
  	When set status in input search "CANCELED"
  	Then I see the task to find by time post "wmFqr6p8Q9Ltfgbyw"