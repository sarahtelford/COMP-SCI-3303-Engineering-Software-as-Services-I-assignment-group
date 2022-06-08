Given(/^ the following Candidates exist:$/) do |candidates_table|
  candidates_table.hashes.each do |candidate|
    Candidate.create candidate
  end
end


Given(/^: I am on the home page$/) do
  visit root_path
end

When(/^: I click on New Candidate I enter details for a candidate$/) do
  visit '/candidates/new'
  fill_in 'Name', with: 'My Name'
  fill_in 'Party', with: 'Legalise Cannabis Party'
  click_button 'Create Candidate'
end

Then(/^: I should see the new candidate on the homepage$/) do
  visit admin_path
  expect(page).to have_content("My Name")
  expect(page).to have_content("Legalise Cannabis Party")
end

When(/^: I click on New Candidate I enter details for an already existing candidate$/) do
  visit '/candidates/new'
  fill_in 'Name', with: 'Steve Rogers'
  fill_in 'Party', with: 'One Nation'
  click_button 'Create Candidate'
end

Then(/^: The user should be redirected to the admin page$/) do
  visit admin_path
end

And(/^: I should be informed that "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end

And(/^I should be informed that "([^"]*)"$/) do |statement|
  expect(page).to have_text(statement)
end

When(/^: I click on New Candidate I enter invalid details for a candidate$/) do
  visit '/candidates/new'
  fill_in 'Party', with: 'Legalise Cannabis Party'
  click_button 'Create Candidate'
end

Then(/^: The user should observe "([^"]*)"$/) do |arg|
  visit '/candidates/new'
  expect(page).to have_content(arg)
end