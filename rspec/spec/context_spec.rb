describe 'soma' do
    context 'somar dois numeros' do
        it 'negativos' do
            total = -3 + (-3)
            puts total
            expect(total).to eq -6
        end

        it 'positivos' do
            total = 3 + 3
            puts total
            expect(total).to eq 6

        end
    end
end 