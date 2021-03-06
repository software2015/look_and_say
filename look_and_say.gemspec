
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "look_and_say/version"

Gem::Specification.new do |spec|
  spec.name          = "look_and_say"
  spec.version       = LookAndSay::VERSION
  spec.authors       = ["Sherzodbek Ortikjonov"]
  spec.email         = ["hhll69241@gmail.com"]
  spec.license       = 'MIT'
  spec.summary       = %q{look_and_say is the implementation of look and say algorithm}
  spec.description   = %q{look_and_say generates look and say sequence}
  spec.homepage      = "https://github.com/software2015/look_and_say"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"    
  #  spec.metadata["homepage_uri"] = spec.homepage
  #  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ["lib/look_and_say.rb", "lib/look_and_say/version.rb"]
  spec.bindir        = "bin"
  spec.executables   = ["look_and_say"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
