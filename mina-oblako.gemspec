# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/oblako/version'

Gem::Specification.new do |spec|
  spec.name          = 'mina-oblako'
  spec.version       = Mina::Oblako::VERSION
  spec.authors       = ['gydroperit']
  spec.email         = ['gydroperit@gmail.com']
  spec.summary       = %(Mina extended configurator.)
  spec.description   = %(Configuration and managements Mina tasks for Nginx + Puma.)
  spec.homepage      = 'https://github.com/gydroperit/mina-oblako.git'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'mina', '~> 1'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 0'
end
