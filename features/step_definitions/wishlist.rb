Dado(/^que eu esteja logado$/) do
	
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

Quando(/^eu crio uma Lista de Desejos$/) do

	#clica no link Da Lista de Desejos
	find(:link, 'My wishlist').click
	#Insere no campo nome da lista
	find(:id, 'name').set('Minha Lista') 
	#clica no botão Save >
	find(:id, 'submitWishlist').click
end

Então(/^adiciono um item à ela$/) do
	#abre a pagina de um produto
	visit 'http://automationpractice.com/index.php?id_product=1&controller=product'
	
	#aciona o botão Addto WishList
	find(:id, 'wishlist_button').click
	
	#verifica a mensagem da pop-up
	expect(page).to have_content 'Added to your wishlist.'
	
	#fecha a pop-up
	find(:xpath, '/html/body/div[2]/div/div/a').click
end