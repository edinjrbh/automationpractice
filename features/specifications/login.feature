#language: pt

Funcionalidade: Login
	Sendo um usuário do site
	Eu quero ser capaz de entrar

@login
Cenário: Login com Sucesso
	Dado que esteja na página de login 
	Quando inserir os dados e entrar
	Então estando conectado, serei redirecionado para a página da minha conta