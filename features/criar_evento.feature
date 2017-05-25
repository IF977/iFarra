Feature: Criar evento
  Como usuário (criador de eventos)
  Gostaria de fazer o login na aplicação
  Para acessar, criar ou alterar eventos criados por mim
  
  Background: Começando logado e na página de eventos
    Given I am on the home page
    When I have the user with email user@gmail.com and password 123456
    And I am logged in with email user@gmail.com and password 123456
    And I click on the Eventos link
    And I click on the criar_evento link
    
  Scenario Outline: Criando um evento com sucesso (Caminho feliz)
    When I fill evento_nome input with <nome>
    And I fill evento_descricao input with <descricao>
    And I fill evento_inicio input with <inicio>
    And I fill evento_fim input with <fim>
    And I fill evento_nome_local input with <nome_local>
    And I fill evento_endereco input with <endereco>
    And I click on the Create button
    Then I should see Evento criado com sucesso
    
    Examples:
      | nome | descricao | inicio | fim | nome_local | endereco |
      | Festao massa | Vai ser massa | 2017,06,01,14,45,0 | 2017,06,02,14,45,0 | Parque da Jaqueira | Recife |
      | Apresentacao GPN | Vai dar bom | 2017,05,25,17,00,0 | 2017,05,25,17,30,0 | CIn UFPE | Recife |
  
  Scenario: Tentativa de criar evento sem nome (Caminho triste)
    When I fill evento_descricao input with Aniversario
    And I fill evento_inicio input with 2017,06,01,14,45,0
    And I fill evento_fim input with 2017,06,02,14,45,0
    And I fill evento_nome_local input with Parque
    And I fill evento_endereco input with Jaqueira
    And I click on the Create button
    Then I should see Preencha todos os campos
    
  Scenario: Tentativa de criar evento endereco e descricao (Caminho triste)
    When I fill evento_nome input with Festa
    And I fill evento_inicio input with 2017,06,01,14,45,0
    And I fill evento_fim input with 2017,06,02,14,45,0
    And I fill evento_nome_local input with Parque
    And I click on the Create button
    Then I should see Preencha todos os campos