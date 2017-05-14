Feature:
  Como usuário (all)
  Gostaria de fazer o login simples na aplicação
  Para acessar e alterar minhas informações de perfil
  
  Background: Começando da página de login
    Given I am on the home page
    When I click on the sign_in button
    Then I should go to /users/sign_in link
    And I should see Log in
    And I have the user with email user@gmail.com and password 123456
    
  Scenario: Entrando na conta com sucesso (Happy path)
    When I fill user_email input with user@gmail.com
    And I fill user_password input with 123456
    And I click on the login button
    Then I should go to /user/1 link                                                #Mateus, isso deveria ser assim "i should go to /users/id_profile ou algo do tipo"
    And I should see eae                                                            #aqui deve ter uma mensagem que vai ter no profile do usuario (antes de rodar apaga o comentário senão da bug)
    
  Scenario: Tentando logar sem email (Sad path)
    When I fill user_password input with 123456
    And I click on the login button
    Then I should see Invalid Email or password
    
  Scenario: Tentando logar sem senha (Sad path)
    When I fill user_email input with user@gmail.com
    And I click on the login button
    Then I should see Invalid Email or password