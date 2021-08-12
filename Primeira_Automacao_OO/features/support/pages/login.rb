class Login
include Capybara::DSL
include RSpec::Matchers


    def acessar_pagina_login
     find(EL["botaoLogin"]).click
    end    
      

    def preencher_campos_login
     find(EL["email"]).set "mathias@gmail.com"
     find(EL["senha"]).set "12345"
     find(EL["botaoSubmit"]).click
    end


    def mostrar_erro_autenticacao
     expect(page).to have_text "Authentication failed."
    end


    def mostrar_email_invalido
        expect(page).to have_text "Invalid email address"
    end


    def preencher_campos_login_senha_errada
        find(EL["email"]).set "mathias@gmail.com"
        find(EL["senha"]).set  "123456"
        find(EL["botaoSubmit"]).click


    end

    def preencher_campos_login_email_nao_cadastrado
        find(EL["email"]).set "mathiasss@gmail.com"
        find(EL["senha"]).set  "12345"
        find(EL["botaoSubmit"]).click
    end

    def preencher_campos_login_email_invalido
        find(EL["email"]).set "mathiasssgmail.com"
        find(EL["senha"]).set  "12345"
        find(EL["botaoSubmit"]).click
    end

end