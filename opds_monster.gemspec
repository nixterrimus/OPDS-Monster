# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "opds_monster/version"

Gem::Specification.new do |s|
  s.name        = "opds_monster"
  s.version     = OpdsMonster::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Rowe"]
  s.email       = ["nixterrimus@dcxn.com"]
  s.homepage    = ""
  s.summary     = %q{Download OPDS feeds}
  s.description = %q{A command line tool to download opds feeds}

  s.rubyforge_project = "opds_monster"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency "ratom"
end
