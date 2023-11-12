# frozen_string_literal: true

require_relative '../lib/day_weak.rb'

# Descrever os testes para a função day_of_the_week
RSpec.describe 'day_of_the_week' do
  it 'calcula o dia da semana corretamente' do
    # Teste para uma data conhecida
    expect(DayWeak.day_of_the_week(2023, 11, 12)).to eq(0) 
   end
end

# Descrever os testes para a função day_name
RSpec.describe 'day_name' do
  it 'retorna o nome do dia corretamente' do
    # Teste para um número de dia conhecido
    expect(DayWeak.day_name(1)).to eq('Segunda-feira')
  
  end
end

