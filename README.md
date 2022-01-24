# README

* Qual foi seu planejamento para a realização do desafio?
Eu optei em primeiro criar as tabelas, quais colunas seriam, por exemplo:
Tabelas
Problemas com voo
	Qual situação você passou?
	Detalhes do pedido
	Usuário
	Endereço
	Provas
	Advogado
Problemas com negativado
	Onde está a dívida que está negativando seu nome?
	Categoria da sua dívida
	Usuário
	Endereço
	Provas
	Advogado

* Quais os principais problemas que você enfrentou durante a execução
do desafio?
Minhas maiores dificuldades, sem dúvida foram no processo de configuração da minha máquina, por fim, tive um problema na hora de subir a aplicação no heroku, pois a minha aplicação só poderia rodar em Windows enquanto o servidor da Heroku roda em linux. Segue o log que apareceu:
-----> Building on the Heroku-20 stack
-----> Determining which buildpack to use for this app
-----> Ruby app detected
-----> Installing bundler 2.2.33
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-3.1.0
-----> Installing dependencies using bundler 2.2.33
       Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin BUNDLE_DEPLOYMENT=1 bundle install -j4
       Your bundle only supports platforms ["x64-mingw-ucrt"] but your local platform
       is x86_64-linux. Add the current platform to the lockfile with `bundle lock
       --add-platform x86_64-linux` and try again.
       Bundler Output: Your bundle only supports platforms ["x64-mingw-ucrt"] but your local platform
       is x86_64-linux. Add the current platform to the lockfile with `bundle lock
       --add-platform x86_64-linux` and try again.
 !
 !     Failed to install gems via Bundler.
 !
 !     Push rejected, failed to compile Ruby app.
 !     Push failed

* Se você tivesse mais um dia para desenvolver, o que faria? E mais 1
semana? E mais 1 mês?
Eu iria criar uma tela de login com todo o gerenciamento de usuários e se tivesse um mês eu faria o relacionamento das tabelas de problemas de voo e problemas de negativados com a tabela de Advogados criando posteriormente o login dos advogados e o gerenciamento das contas dos mesmos.
