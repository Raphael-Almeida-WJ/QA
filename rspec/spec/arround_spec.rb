describe 'usando arround' do
    around(:each) do |testes|
        puts 'executando antes dos testes'

        testes.run

        puts 'executando depois dos testes'

    end
    it 'dois numeros' do
        total = 2+2
        puts total
        expect(total).to eq 4
        puts 'executando testeh'
    end
end