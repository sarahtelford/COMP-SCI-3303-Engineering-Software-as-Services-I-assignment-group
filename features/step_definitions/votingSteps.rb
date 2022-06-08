Given(/^the following Candidates exist:$/) do |candidates_table|
  candidates_table.hashes.each do |candidate|
    Candidate.create candidate
  end
end

Given(/^the following parties exist:$/) do |parties_table|
  parties_table.hashes.each do |parties|
    Party.create parties
  end
end

Given(/^: The users are signed in to an authorised account$/) do
  visit public_path
end

When(/^: The user selects "([^"]*)"$/) do |select|
  expect(page).to have_content(select)
end

Then(/^: The user is redirected to the associated voting page$/) do
  visit '/public/aboveLine'
  expect(page).to have_content("Voting Above The Line")
end

And(/^: The user should see the table of data$/) do
  expect(page).to have_css 'table'
  expect(page).to have_content('party')
end

Given(/^: The user is on the "Above Line" voting page$/) do
  visit '/public/aboveLine'
end

When(/^: The dropdown list is selected, numbers 1-6 are dispalyed$/) do
  pending
end

When(/^: Value is selected it is assigned to the associated party$/) do
  pending
end

Given(/^: All numbers are assigned to a party$/) do
  page.all('select#vote option').map(&:vote).should == %w(1 2 3 4 5 6)
end

Then(/^: The submit button is enabled$/) do
  expect(page).to have_button("Save")
end

Then(/^: The user is redirected to the associated Below Line voting page$/) do
  visit '/public/belowLine'
  expect(page).to have_content("Voting Below The Line")
end

And(/^: The user should see the candidate table of data$/) do
  expect(page).to have_css 'table'
  expect(page).to have_content('Candidate Name')
  expect(page).to have_content('Party')
end

Given(/^: The user is on the "Below Line" voting page$/) do
  visit '/public/belowLine'
end


When(/^: A the dropdown list is selected, numbers 1-12 are dispalyed$/) do |arg|
  pending
end

Given(/^: All numbers are assigned to a candidate$/) do
  page.all('select#vote option').map(&:vote).should == %w(1 2 3 4 5 6 7 8 9 10 11 12)
end