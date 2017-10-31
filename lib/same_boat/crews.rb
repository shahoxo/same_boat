module SameBoat
  class Crews
    def initialize(crews, journal_file: '.same_boat.journal')
      @crews, @journal_file = crews, journal_file
    end

    def row
      call_over == past_travel
    end

    def journal
      File.write(@journal_file, call_over)
    end

    def call_over
      @crews.map { |crew| "#{crew.name}: #{crew.present}" }.join
    end

    def past_travel
      File.read(@journal_file)
    end
  end
end
