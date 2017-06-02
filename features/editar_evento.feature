Feature: Editar evento
  
  Background:
    Given I have an Evento with nome, endereço etc
    And I visit the Evento show page
    
  Scenario:
    When I fill evento_nome input with <nome>
    And I fill evento_descricao input with <descricao>
    And I fill evento_inicio input with <inicio>
    And I fill evento_fim input with <fim>
    And I fill evento_nome_local input with <nome_local>
    And I fill evento_endereco input with <endereco>
    Then I should see Evento editado com sucesso