# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


### Configurando o projeto no Ubuntu e derivados

sudo apt-get update

sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

sudo apt-get install git

#### Instalar Rbenv

Com os seguintes comandos:

$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv

$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc

$ source ~/.bashrc

$ type rbenv,

Se deu tudo certo, você deve ver a seguinte saída:
```
Output
rbenv is a function
rbenv () 
{ 
    local command;
    command="$1";
    if [ "$#" -gt 0 ]; then
        shift;
    fi;
    case "$command" in 
        rehash | shell)
            eval "$(rbenv "sh-$command" "$@")"
        ;;
        *)
            command rbenv "$command" "$@"
        ;;
    esac
}
```

#### Instalar Ruby Build

$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

#### Instalando o Ruby

Este comando, deve carregar em cache a lista de versões disponíveis para instalação:

$ rbenv install -l

Agora instale a versão desejada (eu escolhe a versão 2.4.1)

$ rbenv install 2.4.1

Com o comando abaixo, você define a versão global do Ruby no sistema

$ rbenv global 2.4.1

Para verificar se deu tudo certo, digite o comando:

$ ruby -v

Se deu certo, você deve ver algo parecido com isso:

!Image for post!


#### Instalando o Bundler:

$ sudo gem install bundler
