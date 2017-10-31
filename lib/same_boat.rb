require "same_boat/version"

module SameBoat
  autoload :Crews, 'same_boat/crews'
  autoload :Crew, 'same_boat/crew'

  def self.accept(crews)
    Crews.new(crews)
  end
end
