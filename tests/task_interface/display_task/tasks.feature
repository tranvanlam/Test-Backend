Feature: Task interface test search
  As a human
  I choose number of tasks display screen
  I can see number of tasks in screen

  @watch
  Scenario: Choose number 5
  	Given visited task backend
  	When choose number five "5"
  	Then see number of tasks in screen is five

  @watch
  Scenario: Choose number 10
  	Given visited task backend
  	When choose number ten "10"
  	Then see number of tasks in screen is ten