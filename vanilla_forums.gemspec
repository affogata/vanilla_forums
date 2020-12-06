require_relative 'lib/vanilla_forums/version'

Gem::Specification.new do |spec|
  spec.name          = "vanilla_forums"
  spec.version       = VanillaForums::VERSION
  spec.authors       = ["Lord Meidar"]
  spec.email         = ["elad@affogata.com"]

  spec.summary       = "Vanilla Forums API V2.0 ruby sdk"
  spec.description   = "Vanilla Forums API V2.0 ruby sdk"
  spec.homepage      = "https://github.com/communit-team/vanilla_forums"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/communit-team/vanilla_forums"
  spec.metadata["changelog_uri"] = "https://github.com/communit-team/vanilla_forums/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'httparty'
end
