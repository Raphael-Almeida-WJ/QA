describe 'usando hooks'do

    before(:each) do
        puts 'vou executar hein, ta preparada?'
    end
    it 'teste' do
        total = 10+10
        expect(total).to eq 20
        puts 'executando o teste'
    end
    after(:each) do
        puts 'executou o teste, ufa!!'
    end
end