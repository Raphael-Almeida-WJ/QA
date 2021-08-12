describe 'cadastrando' do
    it 'usuario' do
        
        @body = {
            "usuarionome": "raphaelMathiasss",
            "usuariologin": "raphaelMathiasss",
            "usuariosenha": "123456"
          }.to_json
        
    

        
    
          puts"inicio cadastrar usuario"
        @criar = Principal.post('/usuario', body: @body)

        puts @criar.body
       
        puts"fim cadastrar usuario"
      
        
    end
end