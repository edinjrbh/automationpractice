#language: pt
Funcionalidade: Lista de Desejos
	Como usuário logado, 
	Quero Criar uma lista de Desejos e adicionar itens
	
@listaDesejos
Cenário: Criar Lista de Desejos
	Dado que eu esteja logado
	Quando eu crio uma Lista de Desejos
	Então adiciono um item à ela