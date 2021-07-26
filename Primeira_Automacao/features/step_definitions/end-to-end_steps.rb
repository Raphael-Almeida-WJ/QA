  Dado('busca por um produto desejado') do
    find("img[alt='Faded Short Sleeve T-shirts']").click
  end
  
  Dado('que o usuario adiciona o produto no seu carrinho') do
    find(".exclusive").click
    find("a[title='Proceed to checkout']").click
  end
  
  Quando('passar por todos os passos da página finalizar sua compra') do
    find("a[title='Proceed to checkout']").click
  end
  
  Quando('se autenticar no sistema') do
    find("#email").set "mathias@gmail.com"
    find("#passwd").set "12345"
    find("#SubmitLogin").click
  end
  
  Entao('sera possivel finalizar sua compra') do
    find("button[name='processAddress']").click
    find('.checker').click
    find("button[name='processCarrier']").click
    find('.bankwire').click
    find('span', text: "I confirm my order").click

  end
  
  Entao('gerar seu pedido') do
    expect(page).to have_text "Your order on My Store is complete."

  end