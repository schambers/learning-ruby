Feature: View Tasks

	As a user with tasks to work with
	I Want to see a list of my tasks
	So I can see at a glance my tasks
	
	Scenario: Add Task to List
		Given a task called "Take out the trash" with category "Honey-Do"
		When I browse the tasks page
		Then I should see "Take out the trash"
		
	Scenario: See Tasks on Home Page
		Given a task called "Take out the trash" with category "Honey-Do"
		When I go to the homepage
		Then I should see "Take out the trash"

	Scenario: See categories with Tasks
		Given a task called "Take out the trash" with category "Honey-Do"
		When I go to the homepage
		Then I should see "Take out the trash"
		And I should see "Honey-Do"
