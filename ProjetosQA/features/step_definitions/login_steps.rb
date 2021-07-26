  Dado('que o usuario acesse a pagina principal') do
    visit 'http://automationpractice.com/index.php'
  end
  
  Quando('o usuario acessar a pagina de login') do
    find(".login").click
  end
  
  Quando('o usuario preencher campos de login e senha') do 
    find("#email").set "mathias@gmail.com"
    find("#passwd").set "12345"
    find("#SubmitLogin").click
  end

  Então('deve ser redirecionado a pagina de my account') do
    expect(page).to have_text "Welcome to your account. Here you can manage all of your personal information and orders."
  end


  
  Então('deve ver uma mensagem de erro dizendo que a autenticacao falhou') do
    expect(page).to have_text "Authentication failed."
  end

  
  Então('deve ver uma mensagem de erro dizendo que o email e invalido') do
    expect(page).to have_text "Invalid email address"
  end
  

Quando('o usuario preencher campos com a senha errada') do
  find("#email").set "mathias@gmail.com"
  find("#passwd").set "123456"
  find("#SubmitLogin").click
end

Quando('o usuario preencher campos com um login nao cadastrado') do
  find("#email").set "mathiasss@gmail.com"
  find("#passwd").set "12345"
  find("#SubmitLogin").click
end

Quando('o usuario preencher campos com um email invalido') do
  find("#email").set "mathiasssgmail.com"
  find("#passwd").set "12345"
  find("#SubmitLogin").click
end