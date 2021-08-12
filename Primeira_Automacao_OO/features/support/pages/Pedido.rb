class Pedido
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def checar_produto_gerado
        expect(page).to have_text "Your order on My Store is complete."
    end    
end


