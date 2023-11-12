# frozen_string_literal: true

require_relative "elempostneg/version"

      module Elempostneg
        class Error < StandardError; end

      # Função para reorganizar os elementos positivos em locais pares e os elementos negativos em locais ímpares no array.
      def self.rearrange_array(arr)
        # Crie duas listas separadas para elementos positivos e negativos.
        positive_nums = arr.select { |num| num >= 0 }
        negative_nums = arr.select { |num| num < 0 }

        # Inicialize um índice para a lista de números negativos.
        neg_index = 0

        # Percorra o array pelo índice.
        arr.each_index do |i|
          # Se o índice for par, insira um número positivo.
          if i.even? && !positive_nums.empty?
            arr[i] = positive_nums.shift
          # Caso contrário, insira um número negativo.
          elsif !negative_nums.empty?
            arr[i] = negative_nums.shift
          end
        end

        # Retorna o array reorganizado.
        arr
      end
end
