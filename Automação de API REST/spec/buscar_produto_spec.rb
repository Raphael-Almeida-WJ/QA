describe 'fazer uma requisição' do
    it 'get produtos' do
        @body = {}
  
          @header = {
              Accept: 'application/vnd.tasksmanager.v2',
              'Content-Type': 'application/json',
              token: "#{$tokenGlobal}"
          }
          puts"inicio busca"
        @melhor_opcao = Principal.get('/produto', body: @body, headers: @header)
        puts @melhor_opcao
        puts"fim busca"
    end
end
