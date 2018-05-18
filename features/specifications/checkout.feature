#language: pt
Funcionalidade: Efetuar uma Compra

@efetuaCompra
Cenário: Criar uma conta
	Dado que esteja logado
	Quando adiciono produtos ao carrinho 
	E seleciono a forma de pagamento
	Então finalizo a compra