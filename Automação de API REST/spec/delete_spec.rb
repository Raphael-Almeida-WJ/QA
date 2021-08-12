describe 'fazer requisicao' do
    it 'delete' do
        @body = {}
  
        @header = {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            token: "#{$tokenGlobal}"
        }
        puts"inicio apagar produto"
        @melhor_opcao = Principal.delete('/produto/19174', body: @body, headers: @header)
        puts @melhor_opcao
        puts"fim apagar produto"
    end
end