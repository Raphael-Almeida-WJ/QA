describe 'fazer uma requisição' do
    it 'get contatos' do
        @melhor_opcao = Contato.get('/contacts/323')
        #puts @melhor_opcao
        puts @melhor_opcao.code #retorna o cógio do status code da sua requisição
        expect(@melhor_opcao.code).to eq 200 #checa se o codigo é 200
        #caso a resposta venha como json
        #puts @melhor_opcao.body
        #o retorno do corpo da requisição é sempre em string, então temos que convertê-lo em json
      #  puts @melhor_opcao.parsed_response
       # puts @melhor_opcao.parsed_response['data']['attributes']['name']
        expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq "putRaphaelPost"
        expect(@melhor_opcao.parsed_response['data']['attributes']['last-name']).to eq "putMathiasPost"
        expect(@melhor_opcao.parsed_response['data']['attributes']['email']).to eq "putmaithiias@gmail.com"
        expect(@melhor_opcao.parsed_response['data']['attributes']['age']).to eq 19
    end
end
