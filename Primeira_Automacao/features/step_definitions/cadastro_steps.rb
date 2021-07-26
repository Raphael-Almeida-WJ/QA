Dado('que o usuario acesse a pagina inicial') do
  visit 'http://automationpractice.com/index.php'
end

Quando('e acessado a pagina de autenticacao') do
  find(".login").click
end

Dado('que o usuario informe um email valido') do
  find("#email_create").set Faker::Internet.email
end

Dado('clicar no botao create an account') do
  find("#SubmitCreate").click
end

Quando('preencher todos os dados do formulario') do
  find("#id_gender1").choose()
  find("#customer_firstname").set "raphael"
  find("#customer_lastname").set "mathias"
  find("#passwd").set "12345"
  find("#firstname").set "Raphael"
  find("#lastname").set "Mathias"
  find("#address1").set "Rua Urucuia,95"
  find("#city").set "rio de janeiro"
  find("select[name='id_state'] option[value='2']").click
  find("select[name='days'] option[value='22']").click
  find("select[name='months'] option[value='2']").click
  find("select[name='years'] option[value='2002']").click
  find("#postcode").set "00000"
  find("#phone_mobile").set "2211144585"
 
end

Quando('clicar no botao register') do
    find("#submitAccount").click
end

Entao('deve ser redirecionado para a pagina myaccount') do
  expect(page).to have_text "Welcome to your account. Here you can manage all of your personal information and orders."
end

Dado('que o usuario informe um email invalido') do
  find("#email_create").set "mathiasaaa"
end


Entao('deve exibir uma mensagem de erro') do
  expect(page).to have_text "Invalid email address."
end

Quando('não preencher todos os dados do formulario') do
  find("#customer_firstname").set ""
  find("#customer_lastname").set ""
  find("#passwd").set ""
  find("#firstname").set ""
  find("#lastname").set ""
  find("#address1").set ""
  find("#city").set ""
  find("#postcode").set ""
  find("#phone_mobile").set ""
 
end

Entao('deve ser exibida uma mensagem de erro') do
  expect(page).to have_text "There are 8 errors"
end
