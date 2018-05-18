Dado(/^que esteja na página de login$/) do
	visit 'http://automationpractice.com/index.php'
	find("a", :text => 'Sign in').click
end

Quando(/^inserir os dados e entrar$/) do
	login = ENV['USER']
	password = ENV['PASSWORD']
	find(:id, 'email').set(login)
	find(:id, 'passwd').set(password)
	find(:id, 'SubmitLogin').click
end

Então(/^estando conectado, serei redirecionado para a página da minha conta$/) do
  expect(page).to have_content 'Welcome to your account. Here you can manage all of your personal information and orders.'
end