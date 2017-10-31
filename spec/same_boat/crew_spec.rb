require "spec_helper"

RSpec.describe SameBoat::Crew do
  describe '#present' do
    let(:file_path) { 'lib/same_boat.rb' }

    context 'when git has been installed' do
      it 'should return hash' do
        crew = described_class.new(file_path)
        crew.present.should_not be_empty
      end
    end

    context 'without git' do
      it 'should return hash' do
        crew = described_class.new(file_path)
        allow(crew).to receive(:git?) { false }
        crew.present.should_not be_empty
      end
    end
  end
end
