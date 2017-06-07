Feature: Entrar em chat com outros usuários
  Como usuário (festeiro)
  Gostaria de iniciar uma conversa com outro usuário que irá para o mesmo evento que eu
  Para conhecer novas pessoas antes de ir ao evento
  
  Scenario: Logado e na página do chat (Caminho feliz)
    Given I am on the home page
    And I have the user with email user@gmail.com and password 123456
    And I am logged in with email user@gmail.com and password 123456
    And I click on the Mensagens link
    Then I should see Envie mensagens agora
    
  Scenario: Tentar entrar na página de chat sem estar logado (Caminho triste)
    Given I am on the home page
    And I am not logged in
    Then I should not see Envie mensagens agora