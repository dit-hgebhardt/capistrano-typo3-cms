# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/typo3/cms/version'

Gem::Specification.new do |specification|
  specification.name = 'capistrano-typo3-cms'
  specification.version = Capistrano::Typo3::Cms::VERSION
  specification.authors = %w(André Lademann)
  specification.email = %w(andre@programmerq.eu)
  specification.date = %q{2013-06-21}
  specification.description = <<-EOF
  To setup and deploy TYPO3 CMS projects.
  EOF
  specification.summary = 'Extend the Capistrano gem with useful recipes for TYPO3 CMS. Ready to go with capistranO!'
  specification.homepage = %q{https://github.com/programmerqeu/capistrano-typo3-cms}
  specification.license = 'MIT'
  specification.post_install_message = 'Thanks for installing capistrano-typo3-cms!'
  specification.files = `git ls-files`.split($/)

  specification.files = [
      '.rspec',
      'Gemfile',
      'Gemfile.lock',
      'LICENSE.txt',
      'Rakefile',
      'README.md',
      'capistrano-typo3-cms.gemspec',

      'lib/capistrano-typo3/cms.rb',
      'lib/capistrano/typo3/cms/version.rb',

      'test/test_helper.rb',
      'test/version_test.rb',

      'spec/spec_helper.rb',
      'spec/version_spec.rb',
      "spec/spec_helper.rb"
  ]
  specification.executables = specification.files.grep(%r{^bin/}) { |f| File.basename(f) }
  specification.test_files = specification.files.grep(%r{^(test|spec|features)/})
  specification.require_paths = %w(lib)

  specification.extra_rdoc_files = %w(LICENSE.txt)
  specification.rdoc_options << '--title' << 'Capistrano TYPO3 CMS Deployment' << '--main' << 'README.md' << '--line-numbers' << '--one-file'

  specification.add_dependency 'capistrano', '~>  2.15.2'
  specification.add_dependency 'capistrano-ext', '~> 1.2.1'
  specification.add_dependency 'capistrano_colors', '~> 0.5.5'
  specification.add_dependency 'capistrano_rsync_with_remote_cache', '~> 2.4.0'
  specification.add_dependency 'railsless-deploy', '~> 1.1.1'

  specification.add_development_dependency 'bundler', '~> 1.3'
  specification.add_development_dependency 'coveralls', '~> 0.6.7'
  specification.add_development_dependency 'capistrano-spec', '~> 0.5.0'
  specification.add_development_dependency 'minitest'
  specification.add_development_dependency 'minitest-reporters'
  specification.add_development_dependency 'test-unit'
  specification.add_development_dependency 'rspec', '~> 2.13.0'
  specification.add_development_dependency 'rake', '~> 10.1.0'

end