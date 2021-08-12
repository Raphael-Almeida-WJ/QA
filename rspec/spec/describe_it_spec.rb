#sempre usar _spec.rb no final de cada arquivo

describe 'rodou' do 
    puts 'a primeira descrição rodou, ta passada?'

    it 'dois numeros' do
        total = 2+2
        puts total
        expect(total).to eq 4
    end


    it 'dois numeros negativos' do
        total = -2+(-2)
        puts total
        expect(total).to eq -4
    end
end