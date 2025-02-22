# frozen_string_literal: true

require File.expand_path('lib/foreman_bootdisk/version', __dir__)

Gem::Specification.new do |s|
  s.name = 'foreman_bootdisk'

  s.version = ForemanBootdisk::VERSION

  s.summary = 'Create boot disks to provision hosts with Foreman'
  # duplicated in locale/gemspec.rb
  s.description = 'Plugin for Foreman that creates iPXE-based boot disks to provision hosts without the need for PXE infrastructure.'
  s.homepage = 'https://github.com/theforeman/foreman_bootdisk'
  s.licenses = ['GPL-3.0']
  s.require_paths = ['lib']

  s.authors = ['Dominic Cleal']
  s.email = 'dcleal@redhat.com'

  s.extra_rdoc_files = [
    'CHANGES.md',
    'LICENSE',
    'README.md'
  ]
  s.files = Dir['{app,config,db,lib,locale,webpack}/**/*'] +
              ['LICENSE', 'README.md'] +
              ['package.json']

  s.required_ruby_version = '>= 2.5'

  s.add_development_dependency 'theforeman-rubocop'
  s.add_development_dependency 'webmock'
end
