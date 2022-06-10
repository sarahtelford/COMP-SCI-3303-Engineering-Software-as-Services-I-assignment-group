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

When(/^: The dropdown list is selected, numbers 1-6 are displayed$/) do
  expect(page).to have_content(1)
  expect(page).to have_content(2)
  expect(page).to have_content(3)
  expect(page).to have_content(4)
  expect(page).to have_content(5)
  expect(page).to have_content(6)
end

Given(/^: All numbers are assigned to a party$/) do
  expect(page).to have_select('Vote', selected: 1)
  expect(page).to have_select('Vote', selected: 2)
  expect(page).to have_select('Vote', selected: 3)
  expect(page).to have_select('Vote', selected: 4)
  expect(page).to have_select('Vote', selected: 5)
  expect(page).to have_select('Vote', selected: 6)
end

Then(/^: The submit button is pressed$/) do
  expect(page).to have_button("Save")
  click_button 'Save'
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

And(/^: All numbers are assigned to a candidate$/) do
  expect(page).to have_select('vote', selected: 1)
  expect(page).to have_select('Vote', selected: 2)
  expect(page).to have_select('Vote', selected: 3)
  expect(page).to have_select('Vote', selected: 4)
  expect(page).to have_select('Vote', selected: 5)
  expect(page).to have_select('Vote', selected: 6)
  expect(page).to have_select('Vote', selected: 7)
  expect(page).to have_select('Vote', selected: 8)
  expect(page).to have_select('Vote', selected: 9)
  expect(page).to have_select('Vote', selected: 10)
  expect(page).to have_select('Vote', selected: 11)
  expect(page).to have_select('Vote', selected: 12)
end

When(/^: The dropdown list is selected, numbers 1-12 are displayed$/) do
  expect(page).to have_content(1)
  expect(page).to have_content(2)
  expect(page).to have_content(3)
  expect(page).to have_content(4)
  expect(page).to have_content(5)
  expect(page).to have_content(6)
  expect(page).to have_content(7)
  expect(page).to have_content(8)
  expect(page).to have_content(9)
  expect(page).to have_content(10)
  expect(page).to have_content(11)
  expect(page).to have_content(12)
end

And(/^: not all numbers are assigned to a candidate$/) do
  expect(page).not_to have_content(1)
  expect(page).to have_content(2)
  expect(page).to have_content(3)
  expect(page).not_to have_content(4)
  expect(page).to have_content(5)
  expect(page).to have_content(6)
end

And(/^: user if informed about invalid vote$/) do
  expect(page).to have_content("invalid vote")
end