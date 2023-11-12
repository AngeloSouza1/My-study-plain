# frozen_string_literal: true
require_relative '../lib/common_characters'

RSpec.describe '#caracteres_comuns' do
  it 'retorna caracteres comuns em várias strings em ordem alfabética' do
    strings = ["geeksforgeeks", "gemkstones", "acknowledges", "aguelikes"]
    resultado = CommonCharacters.caracteres_comuns(strings, :alfabetica)
    resultado_esperado = "e, g, k, s"
    expect(resultado).to eq(resultado_esperado)
  end

  it 'retorna caracteres comuns em várias strings em ordem lexicográfica' do
    strings = ["geeksforgeeks", "gemkstones", "acknowledges", "aguelikes"]
    resultado = CommonCharacters.caracteres_comuns(strings, :lexicografica)
    resultado_esperado = "e, g, k, s"
    expect(resultado).to eq(resultado_esperado)
  end
  
  it 'retorna uma string vazia quando a matriz de strings está vazia' do
    strings = []
    resultado = CommonCharacters.caracteres_comuns(strings)
    resultado_esperado = []
    expect(resultado).to eq(resultado_esperado)
  end

  it 'retorna uma string vazia quando não há caracteres comuns' do
    strings = ["abc", "def", "xyz"]
    resultado = CommonCharacters.caracteres_comuns(strings)
    expect(resultado).to eq('')
  end
end