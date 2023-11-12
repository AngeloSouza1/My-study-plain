# frozen_string_literal: true

require_relative '../lib/group_words'

RSpec.describe '#agrupa_palavras_com_mesmo_conjunto_caracteres' do
  it 'agrupa palavras com o mesmo conjunto de caracteres exclusivos' do
    words = ["may", "amy", "yam"]
    expect { GroupWords.agrupa_palavras_com_mesmo_conjunto_caracteres(words) }.to output("may, amy, yam\n").to_stdout
  end

  it 'lida com palavras vazias' do
    words = [""]
    expect { GroupWords.agrupa_palavras_com_mesmo_conjunto_caracteres(words) }.to output("\n").to_stdout
  end

  it 'lida com palavras que não têm outros com o mesmo conjunto' do
    words = ["apple", "banana", "cherry"]
    expect { GroupWords.agrupa_palavras_com_mesmo_conjunto_caracteres(words) }.to output("apple\nbanana\ncherry\n").to_stdout
  end

 end