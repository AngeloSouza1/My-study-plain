# frozen_string_literal: true

require_relative "group_words/version"

module GroupWords
  class Error < StandardError; end
  
  def self.agrupa_palavras_com_mesmo_conjunto_caracteres(words)
    conjunto_palavras = Hash.new { |hash, key| hash[key] = [] }
  
    words.each do |word|
      conjunto = word.chars.sort.join
      conjunto_palavras[conjunto] << word
    end
  
    conjunto_palavras.each_value do |palavras|
      puts palavras.join(", ")
    end
  end
  
  # Exemplo de uso
  words = ["may", "student", "students", "dog",
           "studentssess", "god", "cat", "act",
           "tab", "bat", "flow", "wolf", "lambs",
           "amy", "yam", "balms", "looped", 
           "poodle"]
  
end
