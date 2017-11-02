require "spec_helper"

RSpec.describe SameBoat::Crews do
  describe '#row' do
    let(:raw_crews) { %w(lib/same_boat.rb lib/same_boat/version.rb).map { |path| SameBoat::Crew.new(path) } }

    context 'by same crews' do
      before do
        @crews = described_class.new(raw_crews)
        @crews.journal
      end

      it { @crews.row.should be true }
    end

    context 'by different crews' do
      let(:other_crews) { %w(lib/same_boat.rb lib/same_boat/crew.rb).map { |path| SameBoat::Crew.new(path) } }
      before do
        described_class.new(other_crews).journal
        @crews = described_class.new(raw_crews)
      end

      it { @crews.row.should be false }
    end
  end

  describe '#journal' do
    let(:raw_crews) { %w(lib/same_boat.rb lib/same_boat/version.rb).map { |path| SameBoat::Crew.new(path) } }
    it { described_class.new(raw_crews).journal.should be_truthy }
  end
end
