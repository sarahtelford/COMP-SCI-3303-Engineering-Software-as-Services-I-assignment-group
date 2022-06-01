Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on "([^"]*)" and enter details$/) do |link_to|
  click_link link_to
  fill_in 'Name', with: 'My Name'
  select '2000', from: 'Year'
  select '9', from: 'Month'
  select '9', from: 'Day'
  fill_in 'Party', with: 'Legalise Cannabis Party'
end

Then(/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end


Given(/^: I am on the home page$/) do
  visit root_path
end

When(/^: The user selects "([^"]*)" and enter duplicate details$/) do |link_to|
  click_link link_to
  fill_in 'Name', with: 'Mitchell Follett'
  select '2000', from: 'Year'
  select '9', from: 'Month'
  select '9', from: 'Day'
  fill_in 'Party', with: 'Legalise Cannabis Party'
  click_link 'Register'
end

Then(/^: The user should see "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end

When(/^: The user selects "([^"]*)" and enter invalid details$/) do |link_to|
  click_link link_to
  select '2000', from: 'Year'
  select '9', from: 'Month'
  select '9', from: 'Day'
  fill_in 'Party', with: 'Legalise Cannabis Party'
  click_link 'Register'
end

Then(/^: The user should observe "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end