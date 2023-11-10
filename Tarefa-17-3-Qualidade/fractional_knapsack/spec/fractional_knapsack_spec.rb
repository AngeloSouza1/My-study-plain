# spec/fractional_knapsack_spec.rb

require_relative '../lib/fractional_knapsack'

RSpec.describe FractionalKnapsack do
  describe 'Calcula o valor máximo possível' do
    let(:item1) { FractionalKnapsack::Item.new(60, 10) }
    let(:item2) { FractionalKnapsack::Item.new(100, 20) }
    let(:item3) { FractionalKnapsack::Item.new(120, 30) }
    let(:item5) { FractionalKnapsack::Item.new(0, 0) }
    let(:item6) { FractionalKnapsack::Item.new(0, 0) }
    let(:items) { [item1, item2, item3] }
    let(:items1) {[item5, item6] }

    it 'calcula corretamente' do
      result = FractionalKnapsack.fractional_knapsack(50, items)
      expect(result).to eq(240.0) 
    end
  
    it 'retorna 0 quando o peso é 0' do
      result = FractionalKnapsack.fractional_knapsack(0, items)
      expect(result).to eq(0)
    end
    
    it 'manipula itens com valores nulos' do
      result = FractionalKnapsack.fractional_knapsack(50, items1)
      expect(result).to eq(0.0)
    end
  
  
  
  
  
  
  
  
  
  
  
  
  
  end
end
