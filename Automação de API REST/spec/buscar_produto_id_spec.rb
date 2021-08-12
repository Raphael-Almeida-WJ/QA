describe 'fazer uma requisição' do
    it 'get produtos por id' do
        @body = {}
  
          @header = {
              Accept: 'application/vnd.tasksmanager.v2',
              'Content-Type': 'application/json',
              token: "#{$tokenGlobal}"
          }
          puts"inicio busca por id"
        @melhor_opcao = Principal.get('/produto/19172', body: @body, headers: @header)
        puts @melhor_opcao
        puts"fim busca por id"
    end
end
