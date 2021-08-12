describe 'fazer requisicao' do
    context 'para alterar dados com' do
        it 'put' do
            @body_put = {

                "id": 323,
                "name": "putRaphaelPost",
                "last_name": "putMathiasPost",
                "email": "putmaithiias@gmail.com",
                "age": "19",
                "phone": "3252423523",
                "address": "rua quiririm",
                "state": "Rio de janeiro",
                "city": "rio de janeiro"
            }.to_json

            @requisicaoput = Contato.put('/contacts/323', body: @body_put)
            puts @requisicaoput
        end
        it 'patch' do
            @body_patch = {
                "id": 324,
                "name": "patchRaphaelPost",
                "last_name": "patchMathiasPost",
                "email": "patchmaithiias@gmail.com",
              
                        }.to_json

            @requisicaopatch = Contato.patch('/contacts/324', body: @body_patch)
            puts @requisicaopatch
        end
    end
end