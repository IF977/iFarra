Feature: Criar evento
  Como usuário (festeiro)
  Gostaria de avaliar o evento e o lugar do evento
  Para expressar minha opinião para outros usuários
  
  Background: Começando logado e na página do evento a ser comentado
    Given I am on the home page
    When I have the user with email user@gmail.com and password 123456
    And I am logged in with email user@gmail.com and password 123456
    And I have a evento with Festa; festa de aniversario; 2017,06,01,14,45,0; 2017,06,02,14,45,0; Casa; Aqui
    And I am on the evento page

  Scenario: Adicionando comentario com sucesso (Caminho feliz)
    When I fill comentario[body] input with vai ser doidera
    And I click on the Criar button
    Then I should see vai ser doidera
    
  Scenario: Adicionando comentário invalido (Caminho triste)
    When comentario[body] input is empty
    And I click on the Criar button
    Then I should see Comentário não pode ser vazio