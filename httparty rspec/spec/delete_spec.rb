describe 'fazer requisicao' do
    it 'delete' do
        Contato.delete('/contacts/325')
    end
end