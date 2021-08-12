describe 'fazer uma requisição' do
    it 'get contatos' do
        #get sem modulos
            #get sem id
            #@primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com//contacts/')
            #get com id
            #@primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com//contacts/322')
            #puts @primeira_opcao
        #fim do get sem o módulo

        #get com o módulo
        @melhor_opcao = Contato.get('/contacts/320')
        puts @melhor_opcao
    end
end
