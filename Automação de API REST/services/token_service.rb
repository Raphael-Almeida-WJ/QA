require 'httparty'
require 'httparty/request'
require "rspec"
require 'httparty/response/headers'
require 'faker'
require 'pry'
module Token
    class Token_Class
        public def gerar_token(user,passwd)
            @user = user
            @passwd = passwd
            @body = {
                "usuariologin": @user,
                "usuariosenha": @passwd
            }.to_json

            @login = Principal.post("/login", body: @body)
            @tokenAcess = @login.parsed_response['data']['token']
            return @tokenAcess
        end
    end
end