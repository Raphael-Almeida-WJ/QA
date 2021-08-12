describe 'cadastrando' do
    it 'usuario' do
        
        @body = {
          "produtonome": "Produto de teste rapha mathias no vscode2",
          "produtovalor": 200.00,
          "produtocores": [
            "preto", "branco"
          ],
          "componentes": [
            {
              "componentenome": "Controle",
              "componentequantidade": 1
            },
            {
              "componentenome": "Memory Card",
              "componentequantidade": 1
            }
          ]
    }.to_json

        @header = {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            token: "#{$tokenGlobal}"
        }

        
        puts"inicio cadastrar produto"
        @criar = Principal.post('/produto', body: @body, headers: @header)
        puts @criar.body
        puts"fim cadastrar produto"
      
        
    end
end