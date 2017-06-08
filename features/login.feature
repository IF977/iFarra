Feature:
  Como usuário (all)
  Gostaria de fazer o login simples na aplicação
  Para acessar e alterar minhas informações de perfil
  
  Background: Começando da página de login
    Given I am on the home page
    When I click on the sign_in button
    And I visit /users/sign_in link
    Then I should see Log in
    And I have the user with email user@gmail.com and password 123456
    
  Scenario: Entrando na conta com sucesso (Happy path)
    When I fill user_email input with user@gmail.com
    And I fill user_password input with 123456
    And I click on the login button
    Then I should see Signed in successfully.
    
  Scenario: Tentando logar sem email (Sad path)
    When I fill user_password input with 123456
    And I click on the login button
    Then I should see Invalid Email or password
    
  Scenario: Tentando logar sem senha (Sad path)
    When I fill user_email input with user@gmail.com
    And I click on the login button
    Then I should see Invalid Email or password