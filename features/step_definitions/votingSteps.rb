Given(/^the following Candidates exist:$/) do |candidates_table|
  candidates_table.hashes.each do |candidate|
    Candidates.create candidate
  end
end

Given(/^: The users are signed in to an authorised account$/) do
  visit root_path
end

When(/^: The user selects "([^"]*)"$/) do |checkbox|
  expect(page).to have_field(checkbox, checked: true)
  click_button 'Submit'
end

Then(/^: The user is redirected to the "([^"]*)" voting page$/) do |above|
  expect(page).to have_content(above)
  visit 'url'
end

And(/^: The user should see all the parties$/) do
  expect(page).to have_content(Candidates)
end