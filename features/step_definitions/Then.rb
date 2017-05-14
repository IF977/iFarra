Then(/^I should see ([^"]*)$/) do |text|
  expect(page).to have_content(text)
end

Then(/^I should go to ([^"]*) link$/) do |link|
  visit(link)
end