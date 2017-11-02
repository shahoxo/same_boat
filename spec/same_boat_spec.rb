require "spec_helper"

RSpec.describe SameBoat do
  describe '.accept' do
    subject { described_class.accept(double('crews'), journal_path: SameBoat::DEFAULT_JOURNAL) }
    it { should be_a described_class::Crews }
  end
end
