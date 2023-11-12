
require_relative '../lib/elempostneg' 

RSpec.describe 'reorganiza elementos positivos em locais pares e elementos negativos em locais ímpares' do
      it ' Array misto com positivos e negativos' do
        arr = [1, -2, 3, -4, 5]
        expect(Elempostneg.rearrange_array(arr)).to eq([1, -2, 3, -4, 5])
      end
      
      it 'Array com apenas números negativos' do
        arr = [-1, -3, -5, -7]
        expect(Elempostneg.rearrange_array(arr)).to eq([-1, -3, -5, -7])
      end
      
      it 'Array vazio' do
        arr = []
        expect(Elempostneg.rearrange_array(arr)).to eq([])
      end  
       
      it 'Array com zeros' do
        arr = [0, 0, 0, 0]
        expect(Elempostneg.rearrange_array(arr)).to eq([0, 0, 0, 0])
      end 
      
      it 'Array com um único elemento' do
        arr = [42]
        expect(Elempostneg.rearrange_array(arr)).to eq([42])
      end
    
end