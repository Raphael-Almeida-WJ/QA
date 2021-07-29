class Produto
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def colocar_produto_carrinho
        find(EL["botaoAdicionarCarrinho"]).click
        find(EL["botaoIrCheckout"]).click
    end   

end