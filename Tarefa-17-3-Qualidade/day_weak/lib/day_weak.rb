# frozen_string_literal: true

require_relative "day_weak/version"

module DayWeak
  class Error < StandardError; end

    # Função para calcular o dia da semana usando o algoritmo de Tomohiko Sakamoto
    def self.day_of_the_week(year, month, day)
      # Array com os valores dos dias iniciais para cada mês
      t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]

      # Se o mês for janeiro ou fevereiro, subtrai 1 do ano e ajusta o mês
      if month < 3
        year -= 1
        month += 12
      end

      # Cálculo do dia da semana usando a fórmula de Sakamoto
      day_number = (year + year / 4 - year / 100 + year / 400 + t[month - 1] + day) % 7

      # Retornar o número do dia da semana (0 = Domingo, 1 = Segunda-feira, etc.)
      return day_number
    end

    # Função para converter o número do dia da semana em uma string com o nome do dia
    def self.day_name(day_number)
      days = ["Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"]
      return days[day_number]
    end

end
