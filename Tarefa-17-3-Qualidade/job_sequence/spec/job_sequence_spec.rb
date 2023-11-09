# spec/job_sequence_spec.rb

require_relative '../lib/job_sequence'

RSpec.describe JobSequence do
  describe 'Tests JobSequence' do
    let(:job_a) { JobSequence::Job.new('a', 2, 100) }
    let(:job_b) { JobSequence::Job.new('b', 1, 19) }
    let(:job_c) { JobSequence::Job.new('c', 2, 27) }
    let(:job_d) { JobSequence::Job.new('d', 1, 25) }
    let(:job_e) { JobSequence::Job.new('e', 3, 15) }

    let(:jobs) { [job_a, job_b, job_c, job_d, job_e] }

    it 'agendamento correto de trabalhos para maximizar o lucro' do
      resultado_esperado = ['a', 'c', 'e']
      resultado = JobSequence.schedule_jobs(jobs)
      expect(resultado).to eq(resultado_esperado)
    end
   end
end
