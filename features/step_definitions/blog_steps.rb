Given /^I go to the create blog page$/ do
  visit new_blog_path
end

And /^I should fill in "([^"]*)" with "([^"]*)"$/ do |arg1,arg2|
  fill_in(arg1, :with => arg2)
end

And /^I should fill in "([^"]*)" with "([^"]*)" $/ do |arg1,arg2|
	fill_in(arg1, :with => arg2)
end

When /^I click the link "([^"]*)"$/ do |arg1|
  click_on arg1
end

Then /^I should be on the blogs listing page$/ do
  visit blogs_path
end

And /^I should see "([^"]*)"$/ do |arg2|
  page.should have_content(arg2)
end


# This is for updating a blog

Given /^I go to the "([^"]*)" page$/ do |arg1|  
  @blog = FactoryGirl.create(:blog)
  @blog.save.should be_true
  visit blog_path(@blog)
  click_on "edit blog"
  visit edit_blog_path(@blog)
end

And /^I should fill in "([^"]*)" with "([^"]*)" $/ do |arg1,arg2|
  fill_in(arg1, :with => arg2)
end

And /^I should fill in "([^"]*)" with "([^"]*)" $/ do |arg1,arg2|
  fill_in(:arg1, :with => arg2)
  
end

When /^I click the link "([^"]*)" $/ do |arg1|
  click_on arg1
end

Then /^I should be on the blog page$/ do
  visit blog_path(@blog)
end

And /^I should see the updated blog "([^"]*)"$/ do |arg2|
  page.should have_content(arg2)
  save_and_open_page
end