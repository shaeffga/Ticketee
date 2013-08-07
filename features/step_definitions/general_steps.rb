Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I am on the projects page$/) do
  visit "/projects"
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
end

When(/^I press "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.has_content? text
end