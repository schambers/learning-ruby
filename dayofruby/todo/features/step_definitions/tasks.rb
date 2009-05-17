Given /^a task called "([^\"]*)"$/ do |task_name|
  @task = Task.create!(:name => task_name)
end

When /^I browse the tasks page$/ do
  visit tasks_path
end

When /^the task is set to the category "([^\"]*)"$/ do |category|
  @task.category = category
  @task.save!
end
