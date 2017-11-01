module SameBoat
  class Crews
    def initialize(crews, journal_path:)
      @crews, @journal_path = crews, journal_path
    end

    def row
      call_over == past_travel
    end

    def journal
      File.write(@journal_path, call_over)
    end

    def call_over
      @crews.map { |crew| "#{crew.name}: #{crew.present}" }.join
    end

    def past_travel
      File.exist?(@journal_path) ? File.read(@journal_path) : ''
    end
  end
end
