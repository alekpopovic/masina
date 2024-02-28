lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'masina/version'

Gem::Specification.new do |spec|
  spec.name          = 'masina'
  spec.version       = Masina::VERSION
  spec.authors       = ['Aleksandar Popovic']
  spec.email         = ['aleksandar.popovic.popac@gmail.com']

  spec.summary       = 'Rails Patterns'
  spec.description   = 'Useful Rails Patterns Generators'
  spec.homepage      = 'https://github.com/popac/masina'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/popac/masina'
  spec.metadata['changelog_uri'] = 'https://github.com/popac/masina/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject do |f| 
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.74.0'
  spec.add_runtime_dependency 'rails', '>= 6', '< 8'
end
