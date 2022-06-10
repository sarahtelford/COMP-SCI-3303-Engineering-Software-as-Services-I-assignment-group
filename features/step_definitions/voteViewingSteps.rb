Given(/^: The admin is on the homepage$/) do
  visit root_path
end

When(/^: The admin selects “Admin login”$/) do
  visit admin_path
end

Then(/^: The admin is on the admin homepage$/) do
  expect(page).to have_content("Australian Federal Election")
end

And(/^: The admin should see votes for each candidate and party$/) do
  expect(page).to have_content("Votes")
end

Given(/^: The public user is on the home page$/) do
  visit root_path
end

When(/^: The public user selects the “Public login” button$/) do
  visit public_path
end

When(/^: the public user selects “Above Line”$/) do
  visit '/public/aboveLine'
end

And(/^: The public user should see the table of party data$/) do
  expect(page).to have_content("Party Name")
  expect(page).to have_content("Vote")
end

And(/^: The public user should see the table of candidate data$/) do
  expect(page).to have_content("Candidate Name")
  expect(page).to have_content("Party")
  expect(page).to have_content("Vote")
end

When(/^: the public user selects “1” for Australian Greens party$/) do
  pending
end

And(/^: The admin should see votes for Australian Greens to be “6”$/) do
  expect(page).to have_content("Australian Greens")
  expect(page).to have_content(6)
end

When(/^: the public user selects “Below Line”$/) do
  visit '/public/belowLine'
end

When(/^: the public user selects “1” for Mary-Jane Dope$/) do
  pending
end

And(/^: The admin should see votes for Mary-Jane Dope to be “12”$/) do
  pending
end

When(/^: The admin selects the “Show” button next to a candidate$/) do
  click_button 'Show'
end

Then(/^: The admin is taken to the candidate show page$/) do
  visit '/candidates/:id'
end

And(/^: The admin should see the candidate information$/) do
  expect(page).to have_content("Candidate Name")
  expect(page).to have_content("Party")
  expect(page).to have_content("Birthday")
  expect(page).to have_content("Votes")
end