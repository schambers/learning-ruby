Feature: Edit Tasks

	As a user of the system
	I want to be able to edit my tasks
	So I can keep them up to date
	
	Scenario: Must enter a name
		Given I am on the homepage
		When I follow "New Task"
		And I press "Create"
		Then I should see "Name can't be blank"

