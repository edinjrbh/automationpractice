require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
 
desc 'Executar Cenários'
task :scenarios do
  puts 'Executando os Cenários'
  sh 'bundle exec cucumber -t @efetuaCompra,@listaDesejos,@login, USER=edinjr@gmail.com PASSWORD=Liteon31'
end