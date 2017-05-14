Feature: sign_up
  Como usuário (all)
  Gostaria de criar uma conta com minhas informações
  Para acessar as funcionalidades da aplicação iFarra
  
  Background: Começando da página de criação de conta
    Given I am on the home page
    When I click on the sign_up button
    Then I should go to /users/sign_up link
    And I should see Sign up
  
  Scenario Outline: Usuario criado com sucesso (Happy path)
    When I fill user_email input with <email>
    And I fill user_password input with <password>
    And I fill user_password_confirmation input with <password>
    And I click on the sign_up button
    Then I should go to / link                                                                        #Mateus, isso deveria ser assim "i should go to /users/id_profile ou algo do tipo"
    And I should see Find me in                                                                       #aqui deve ter uma mensagem que vai ter no profile do usuario (antes de rodar apaga o comentário senão da bug)
    
    Examples:
      | email | password |
      | user312@gmail.com | 123456 |
      | pmmc@gmail.com | 123367 |
  
  Scenario: Tentativa de criar usuario sem email (Sad path)
    When I fill user_password input with 123
    And I fill user_password_confirmation input with 123
    And I click on the sign_up button
    Then I should see Email can't be blank
    
  Scenario: Tentativa de criar usuario sem senha (Sad path)
    When I fill user_email input with user@gmail.com
    And I click on the sign_up button
    Then I should see Password can't be blank
    
  Scenario: Tentativa de criar usuario com senha diferente da confirmação de senha (Sad path)
    When I fill user_email input with user@gmail.com
    And I fill user_password input with 123
    And I fill user_password_confirmation input with 1234
    And I click on the sign_up button
    Then I should see Password confirmation doesn't match Password
    