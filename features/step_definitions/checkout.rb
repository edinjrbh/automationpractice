Dado(/^que esteja logado$/) do
	#abrindo a URL Inicial
	visit 'http://automationpractice.com/index.php'
	
	#clica no link Sign in
	find("a", :text => 'Sign in').click
	
	#recebe os parametros de login
	login = ENV['USER']
	password = ENV['PASSWORD']
	
	#insere nos campos para login
	find(:id, 'email').set(login)
	find(:id, 'passwd').set(password)
	
	#aciona o botão Submit >
	find(:id, 'SubmitLogin').click
	expect(page).to have_content 'Welcome to your account. Here you can manage all of your personal information and orders.'
end

Quando(/^adiciono produtos ao carrinho$/) do
	#abre a pagina de um produto
	visit 'http://automationpractice.com/index.php?id_product=1&controller=product'
	#aciona o botão Add to Cart
	find(:id, 'add_to_cart').click
	#aciona o botão Continue Shopping
	find(:xpath, ".//*[@id='layer_cart']/div[1]/div[2]/div[4]/span/span").click
	
	#abre a pagina outro do produto
	visit 'http://automationpractice.com/index.php?id_product=3&controller=product'
	
	#aciona o botão Add to Cart
	find(:id, 'add_to_cart').click

	#aciona o botão Proceed to Checkout
	find(:xpath, ".//*[@id='layer_cart']/div[1]/div[2]/div[4]/a/span").click
	
	#aciona o botão Proceed to Checkout na tela SHOPPING-CART SUMMARY
	find(:xpath, ".//*[@id='center_column']/p[2]/a[1]/span").click
	
	#aciona o botão Proceed to Checkout na tela ADDRESSES
	find(:xpath, ".//*[@id='center_column']/form/p/button").click
	
	#aciona o checkbox Terms of Service
	find("#cgv", :visible => false).click
		
	#aciona o botão Proceed to Checkout na tela SHIPPING
	find(:xpath, ".//*[@id='form']/p/button").click
end

Quando(/^seleciono a forma de pagamento$/) do
	#aciona o botão Pay by bank wire
	find(:xpath, ".//*[@id='HOOK_PAYMENT']/div[1]/div/p/a").click
end

Então(/^finalizo a compra$/) do
	#acina o botão I confirm my order
	find(:xpath, ".//*[@id='cart_navigation']/button").click
end