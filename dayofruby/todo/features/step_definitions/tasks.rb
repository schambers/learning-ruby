Given /^a task called "([^\"]*)" with category "([^\"]*)"$/ do |task_name,category_name|
  @task = Task.create!(:name => task_name, :category => category_name)
end

When /^I browse the tasks page$/ do
  visit tasks_path
end
