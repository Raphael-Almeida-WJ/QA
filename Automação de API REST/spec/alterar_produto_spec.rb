describe 'cadastrando' do
    it 'usuario' do
      @body = {
        "produtonome": "produto do rapha alteradinho",
        "produtovalor": 250.00,
        "produtocores": [
          "preto", "branco",
        ],
        "componentes": [
          {
            "componentenome": "Memory Card",
            "componentequantidade": 1,
          },
        ],
      }.to_json

        @header = {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            token: "#{$tokenGlobal}"
        }

        
        puts"inicio alterar produto"
        @criar = Principal.put('/produto/19172', body: @body, headers: @header)
        puts @criar.body
       
        puts"fim alterar produto"
        
    end
end