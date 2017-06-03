When(/^[I ]*fill ([^"]*) input with ([^"]*)$/) do |input, data|
  fill_in(input, :with => data)
end

When(/^[I ]*click on the ([^"]*) button$/) do |button|
  click_button(button)
end

When(/^I visit ([^"]*) link$/) do |link|
  visit(link)
end

When(/^I check ([^"]*) box$/) do |checkbox|
  check(checkbox)
end

When(/^I have the user with email ([^"]*) and password ([^"]*)$/) do |email, senha|
    @user = User.create!({
        :email => email,
        :password => senha
    })
end

When(/^I click on the ([^"]*) link$/) do |link|
  click_link(link)
end

When (/^[I ]* am logged in with email ([^"]*) and password ([^"]*)$/) do |email, senha|
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => senha
  click_button "login"
end

When(/^I attach a image on evento_image$/) do
  path = File.join('features', 'uploaded_files', 'foto_para_teste.jpg')
  attach_file('evento_image', path)
end