class Homepage
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def escolher_produto
        find(EL["produto"]).click
    end    


end