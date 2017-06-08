When(/^[I ]*fill ([^"]*) input with ([^"]*)$/) do |input, data|
  fill_in(input, :with => data)
end

When(/^([^"]*) input is empty$/) do |input|
  fill_in(input, :with => nil)
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

When(/^I have a evento with ([^"]*); ([^"]*); ([^"]*); ([^"]*); ([^"]*); ([^"]*)$/) do |nome, descricao, inicio, fim, nome_local, endereco_local|
  @evento = Evento.create!({
    :nome => nome,
    :descricao => descricao,
    :inicio => inicio,
    :fim => fim,
    :nome_local => nome_local,
    :endereco => endereco_local,
    :user_id => 1
  })
end

When(/^I am on the evento page$/) do
  visit('eventos/' + @evento.id.to_s)
end

Given(/^I am not logged in$/) do
  visit('/users/sign_out')
end