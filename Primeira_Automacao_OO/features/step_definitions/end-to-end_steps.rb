  Dado('busca por um produto desejado') do
    @homepage.escolher_produto
  end
  
  Dado('que o usuario adiciona o produto no seu carrinho') do
    @produto.colocar_produto_carrinho
  end
  
  Quando('passar por todos os passos da página finalizar sua compra') do
    @checkout.passo_continuar_checkout
  end
  
  Quando('se autenticar no sistema') do
    @login.preencher_campos_login
  end
  
  Entao('sera possivel finalizar sua compra') do
    @checkout.finalizar_checkout

  end
  
  Entao('gerar seu pedido') do
    @pedido.checar_produto_gerado

  end