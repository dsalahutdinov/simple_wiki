# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_wiki/version"

Gem::Specification.new do |s|
  s.name        = "simple_wiki"
  s.version     = SimpleWiki::VERSION
  s.authors     = ["Salahutdinov Dmitry"]
  s.email       = ["dsalahutdinov@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple wiki text processor}
  s.description = %q{Helper class to process wiki markup}

  s.rubyforge_project = "simple_wiki"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
