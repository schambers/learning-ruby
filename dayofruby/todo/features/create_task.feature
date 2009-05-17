Feature: New Tasks

	As a user of the system
	I want to create a new tasks
	So that I can track more tasks
	
	Scenario: Must enter a name
		Given I am on the homepage
		When I follow "New Task"
		And I press "Create"
		Then I should see "Name can't be blank"
		
	Scenario: Must enter a Category
		Given I am on the homepage
		When I follow "New Task"
		And I press "Create"
		Then I should see "Category can't be blank"
		
	Scenario: Create a Task successfully
		Given I am on the homepage
		When I follow "New Task"
		And I fill in "task_name" with "New Task"
		And I fill in "task_category" with "Honey-Do"
		And I press "Create"
		Then I should see "Task was successfully created"
