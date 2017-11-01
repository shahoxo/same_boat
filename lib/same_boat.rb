require "same_boat/version"

module SameBoat
  autoload :Crews, 'same_boat/crews'
  autoload :Crew, 'same_boat/crew'

  DEFAULT_JOURNAL = '.same_boat.journal'.freeze
  DEFAULT_CREWS = '.env*'.freeze

  def self.accept(crews, journal_path:)
    Crews.new(crews, journal_path: journal_path)
  end

  def self.build(crew_paths:, journal_path:)
    crews = crew_paths.map { |path| Crew.new(path) }
    accept(crews, journal_path: journal_path)
  end
end
