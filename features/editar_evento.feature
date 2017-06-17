Feature: Editar evento
  Como usuário (criador de eventos)
  Gostaria de fazer o login na aplicação
  Para acessar, criar ou alterar eventos criados por mim
  
  Background:
    Given I am on the home page
    When I have the user with email user@gmail.com and password 123456
    And I am logged in with email user@gmail.com and password 123456
    And I have a evento with Festa; festa de aniversario; 2017,06,01,14,45,0; 2017,06,02,14,45,0; Casa; Aqui
    And I am on the evento page
    
  Scenario: Editando nome com sucesso (Caminho feliz)
    When I click on the Edit link
    And I fill evento_nome input with Aniversario
    And I click on the Update button
    Then I should see Evento editado com sucesso
    
  Scenario: Não foi possível editar o evento (Caminho triste)
    When I click on the Edit link
    And evento_nome input is empty
    And I click on the Update button
    Then I should see Preencha todos os campos
