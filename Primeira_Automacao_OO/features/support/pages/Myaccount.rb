class Myaccount
    include Capybara::DSL
    include RSpec::Matchers
    
    
    def checar_pagina_myaccount
        expect(page).to have_text "Welcome to your account"
    end    
end