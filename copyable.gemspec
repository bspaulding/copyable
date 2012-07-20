# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "copyable/version"

Gem::Specification.new do |s|
  s.name        = "copyable"
  s.version     = Copyable::VERSION
  s.authors     = ["Bradley Spaulding"]
  s.email       = ["bspaulding@dataxu.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "copyable"
  
  s.add_dependency "activerecord"
  
  s.add_development_dependency "rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
