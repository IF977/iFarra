Feature: Criar evento com dados abertos do Recife
  Como usuário (criador de eventos)
  Gostaria de utilizar a API do Yelp
  Para escolher o lugar onde eu irei criar meu evento
  
  Background: Começando logado, na página de eventos e escolhendo o Yelp como forma de procura de lugares
    Given I am on the home page
    When I have the user with email user@gmail.com and password 123456
    And I am logged in with email user@gmail.com and password 123456
    And I click on the Eventos link
    And I click on the procurar_locais link
    
  Scenario Outline: Criando um evento com sucesso e escolhendo 'UK Pub' como lugar (Caminho feliz)
    When I fill search_input input with pub
    And I click on the Pesquisar button
    And I click on the UK_Pub link
    And I fill evento_nome input with <nome>
    And I fill evento_descricao input with <descricao>
    And I fill evento_inicio input with <inicio>
    And I fill evento_fim input with <fim>
    And I attach a image on evento_image
    And I click on the Create button
    Then I should see Evento criado com sucesso
    
    Examples:
      | nome | descricao | inicio | fim |
      | Festao massa | Vai ser massa | 2017,06,01,14,45,0 | 2017,06,02,14,45,0 |
      | Apresentacao GPN | Vai dar bom | 2017,05,25,17,00,0 | 2017,05,25,17,30,0 |
  
  Scenario: Tentativa de criar evento sem nome e escolhendo Escalantes Tex mex como lugar (Caminho triste)
    When I fill search_input input with mexicano
    And I click on the Pesquisar button
    And I click on the Escalantes_Tex_mex link
    And I fill evento_descricao input with Aniversario
    And I fill evento_inicio input with 2017,06,01,14,45,0
    And I fill evento_fim input with 2017,06,02,14,45,0
    And I click on the Create button
    Then I should see Preencha todos os campos
    
  Scenario: Tentativa de criar evento sem descricao e escolhendo Alphaiate como lugar (Caminho triste)
    When I fill search_input input with bar
    And I click on the Pesquisar button
    And I click on the Underground link
    And I fill evento_nome input with Festa
    And I fill evento_inicio input with 2017,06,01,14,45,0
    And I fill evento_fim input with 2017,06,02,14,45,0
    And I click on the Create button
    Then I should see Preencha todos os campos