# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "same_boat/version"

Gem::Specification.new do |spec|
  spec.name          = "same_boat"
  spec.version       = SameBoat::VERSION
  spec.authors       = ["Jun Sitow"]
  spec.email         = ["jshitou@aiming-inc.com"]

  spec.summary       = %q{Monitoring files.}
  spec.description   = %q{Monitoring files. (E.g. .env.development, .env.preview)}
  spec.homepage      = "https://github.com/shahoxo/same_boat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
