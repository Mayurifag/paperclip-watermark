# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperclip-watermark/version'

Gem::Specification.new do |gem|
  gem.name          = "ack-paperclip-watermark"
  gem.version       = PaperclipWatermark::VERSION
  gem.authors       = ["Alexander Kiseliev", "Vik Ewoods"]
  gem.email         = ["dev@redrocks.pro", "support@voroninstudio.eu"]
  gem.description   = %q{Paperclip Watermark processor}
  gem.summary       = %q{Paperclip Watermark processor}
  gem.homepage      = "http://github.com/ack43/paperclip-watermark"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "rake"
  gem.add_dependency "rails", '>= 4'
  gem.add_dependency "minitest"
  # gem.add_dependency "minitest-reporters"
  gem.add_dependency "paperclip", ">= 2.3.8"
end
