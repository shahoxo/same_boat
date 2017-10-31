require "spec_helper"

RSpec.describe SameBoat do
  describe '.accept' do
    subject { described_class.accept(double('crews')) }
    it { should be_a described_class::Crews }
  end
end
