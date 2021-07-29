  Dado('que o usuario acesse a pagina principal') do
    visit 'http://automationpractice.com/index.php'
  end
  
  Quando('o usuario acessar a pagina de login') do
    @login.acessar_pagina_login
  end
  
  Quando('o usuario preencher campos de login e senha') do 
    @login.preencher_campos_login
  end

  Então('deve ser redirecionado a pagina de my account') do
    @myaccount.checar_pagina_myaccount
  end


  
  Então('deve ver uma mensagem de erro dizendo que a autenticacao falhou') do
    @login.mostrar_erro_autenticacao
  end

  
  Então('deve ver uma mensagem de erro dizendo que o email e invalido') do
    @login.mostrar_email_invalido
  end
  

Quando('o usuario preencher campos com a senha errada') do
  @login.preencher_campos_login_senha_errada
end

Quando('o usuario preencher campos com um login nao cadastrado') do
  @login.preencher_campos_login_email_nao_cadastrado
end

Quando('o usuario preencher campos com um email invalido') do
  @login.preencher_campos_login_email_invalido
end