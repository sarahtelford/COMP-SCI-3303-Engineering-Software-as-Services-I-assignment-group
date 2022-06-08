Given(/^: The admin is on the Admin home page$/) do
  visit admin_path
end

When(/^: The admin selects the “Remove Candidate” button next to a candidate$/) do
  expect(page).to have_content('Steve Rogers')
  expect(page).to have_content('One Nation')
end

When(/^: The admin selects the “Yes” button to confirm this is the candidate they want to remove$/) do
  click_button 'Yes'
end

Then(/^: The admin is taken to Admin home page$/) do
  visit admin_path
end

And(/^: should not see the removed candidate$/) do
  expect(page).not_to have_content('Steve Rogers')
end

When(/^: The admin selects the “No” button to cancel removal of a candidate$/) do
  click_button 'No'
end

And(/^: should see the candidate$/) do
  expect(page).not_to have_content('Tony Stark')
end

