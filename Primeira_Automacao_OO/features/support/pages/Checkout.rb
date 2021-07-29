class Checkout
    include Capybara::DSL
    include RSpec::Matchers
    
    
   
    def passo_continuar_checkout
        find(EL["botaoPaginaAutenticacao"]).click
    end

    def finalizar_checkout
        find(EL["botaoPaginaEndereco"]).click
        find(EL["checkbox"]).click
        find(EL["botaoPagamento"]).click
        find(EL["pagarComBoleto"]).click
        find('span', text: "I confirm my order").click
    end

end