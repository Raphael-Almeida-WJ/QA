describe 'fazer uma requisicao' do
    it 'post' do
        @body = {

            "name": "RaphaelPost",
            "last_name": "MathiasPost",
            "email": "maetaas@gmail.com",
            "age": "19",
            "phone": "3252423523",
            "address": "rua quiririm",
            "state": "Rio de janeiro",
            "city": "rio de janeiro"
    }.to_json

        #post sem modulos
            #@headers =
            #{ Accept: 'application/vnd.tasksmanager.v2',
            #'Content-Type': 'application/json'
            #}

            #@request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts',body: @body, headers: @headers)
            #puts @request
        #fim do post sem modulos

        #post com modulo
            @request = Contato.post('/contacts', body: @body)
            puts @request
        #fim do post com modulo
    end
end