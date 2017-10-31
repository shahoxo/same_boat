require "same_boat/version"

module SameBoat
  autoload :Crews, 'same_boat/crews'

  def self.accept(crews)
    Crews.new(crews)
  end
end
