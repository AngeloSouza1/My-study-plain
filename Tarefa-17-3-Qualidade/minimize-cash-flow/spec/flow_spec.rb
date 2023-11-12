# frozen_string_literal: true

require_relative '../lib/minimize/cash/flow'


  RSpec.describe 'CashFlow' do
    it 'demonstra um cenário de pagamentos onde não há dívidas' do
      graph = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
      ]
      expect { Minimize::Cash::Flow.min_cash_flow(graph) }.to output('').to_stdout
    end

    it 'demonstra um cenário onde uma pessoa paga a outra' do
      graph = [
        [0, 100, 0],
        [0, 0, 0],
        [0, 0, 0]
      ]
      expected_output = "Person 0 pays 100 to Person 1\n"
      expect { Minimize::Cash::Flow.min_cash_flow(graph) }.to output(expected_output).to_stdout
    end

      it 'demonstra um cenário de dívidas circulares entre as pessoas' do
        graph = [
          [0, 100, 0],
          [0, 0, 50],
          [0, 0, 0]
        ]
        expected_output = "Person 0 pays 50 to Person 1\nPerson 0 pays 50 to Person 2\n"
        expect { Minimize::Cash::Flow.min_cash_flow(graph) }.to output(expected_output).to_stdout
      end

      it 'demonstra um cenário onde um indivíduo precisa pagar a dois' do
        graph = [
          [0, 100, 100],
          [0, 0, 0],
          [0, 0, 0]
        ]
        expected_output = "Person 0 pays 100 to Person 1\nPerson 0 pays 100 to Person 2\n"
        expect { Minimize::Cash::Flow.min_cash_flow(graph) }.to output(expected_output).to_stdout
      end

      it 'demonstra um cenário mais complexo de dívidas entre várias pessoas' do
        graph = [
          [0, 100, 0],
          [0, 0, 100],
          [0, 0, 0]
        ]
        expected_output = "Person 0 pays 100 to Person 2\n"
        expect { Minimize::Cash::Flow.min_cash_flow(graph)  }.to output(expected_output).to_stdout
      end
end
