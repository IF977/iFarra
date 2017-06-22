Feature: Lista de espera
  Como usuário (festeiro)
  Gostaria de confirmar minha presença em um evento
  Para outros usuários visualizarem que comparecerei ao evento

	Background:
		Given I am on the home page
		When I have the user with email user@gmail.com and password 123456
		And I am logged in with email user@gmail.com and password 123456
		And I have a evento with Festa; festa de aniversario; 2017,06,01,14,45,0; 2017,06,02,14,45,0; Casa; Aqui
		And I am on the evento page
		
	Scenario: Participando da lista de presença (Caminho feliz)
		When I click on the confirmar_presenca button
		Then I should see Participando do evento
	
	
	Scenario: Tentar participar do evento sem estar logado (Caminho triste)
		When I am not logged in
		Then I should not see Lista de Presença