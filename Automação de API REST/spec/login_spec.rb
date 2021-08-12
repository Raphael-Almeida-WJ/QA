describe 'usando' do
    it 'token' do
        
        @body = {
            "usuariologin": "raphaelMathiass",
            "usuariosenha": "123456",
          }.to_json
        
          puts"inicio login"
        @login = Principal.post('/login', body: @body)
        puts @login.body
        puts"fim login"
       
      
        
    end
end