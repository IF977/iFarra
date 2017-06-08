Feature: Encontrar eventos
  Como usuário (festeiro)
  Gostaria de utilizar a ferramenta
  Para encontrar possíveis eventos na cidade de Recife
  
  Background: Começando logado
    Given I am on the home page
    When I have the user with email user@gmail.com and password 123456
    And I am logged in with email user@gmail.com and password 123456
    
  Scenario: Encontrar todos os eventos (caminho feliz)
    When I click on the Eventos link
    Then I should see Mostrando todos eventos
    
  Scenario: Encontrar somente meus eventos (caminho feliz)
    When I click on the Eventos link
    And I check meus_eventos box
    And I click on the Atualizar button
    Then I should see Mostrando seus eventos
    
    
#Comment Tratando-se de um checkbox com somente dois valores (verdadeiro e falso), nesse caso, não diferenciamos caminhos felizes e tristes