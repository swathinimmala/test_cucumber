Given /^I go to the create blog page$/ do
  visit new_blog_path
end

And /^I should fill in "([^"]*)" with "([^"]*)"$/ do |arg1,arg2|
  fill_in(arg1, :with => arg2)
end

And /^I should fill in "([^"]*)" with "([^"]*)" $/ do |arg1,arg2|
	fill_in(arg1, :with => arg2)
end

When /^I click "([^"]*)"$/ do |arg1|
  click_on arg1
end

Then /^I should be on the blogs listing page$/ do
  visit blogs_path
end

And /^I should see "([^"]*)"$/ do |arg2|
  page.should have_content(arg2)
end


# This is for updating a blog

Given /^I should go to blog 1 $/ do
  blog_path(1)
end

And /^I click the "Edit"$/ do
 pending 
end

Then /^I should see the update blog page$/ do
  pending
end