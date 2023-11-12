# frozen_string_literal: true

require_relative "common_characters/version"

module CommonCharacters
  class Error < StandardError; end
    # Define a função para encontrar caracteres comuns em várias strings
    def self.caracteres_comuns(strings, ordem = :alfabetica)
      # Verifique se a matriz de strings está vazia
      return [] if strings.empty?

      # Inicialize um hash vazio para rastrear a frequência de caracteres comuns
      frequencia_comuns = Hash.new(0)

      # Inicialize a frequência comuns com base na primeira string
      strings[0].chars.each do |char|
        frequencia_comuns[char] += 1
      end

      # Itere sobre as outras strings e atualize a frequência comuns
      strings[1..-1].each do |str|
        # Crie um hash temporário para rastrear a frequência de caracteres na string atual
        frequencia_temp = Hash.new(0)

        # Conte a frequência de cada caractere na string atual
        str.chars.each do |char|
          frequencia_temp[char] += 1
        end

        # Atualize a frequência comuns para manter apenas os caracteres comuns
        frequencia_comuns.each do |char, freq|
          # Mantenha a menor frequência entre as strings
          frequencia_comuns[char] = [freq, frequencia_temp[char]].min
        end
      end
      # Crie uma matriz de caracteres comuns
      caracteres_comuns = []
      frequencia_comuns.each do |char, freq|
        # Repita cada caractere a quantidade de vezes correspondente à sua frequência
        caracteres_comuns += [char] * freq
      end

      # Ordene a matriz de acordo com a ordem especificada
      if ordem == :lexicografica
        caracteres_comuns.sort_by! { |char| char.downcase }
      elsif ordem == :alfabetica
        caracteres_comuns.sort!
      else
        raise ArgumentError, "A ordem especificada não é válida."
      end

      # Converta a matriz em uma string com vírgulas, removendo caracteres duplicados
      return caracteres_comuns.uniq.join(", ")
    end
  end
