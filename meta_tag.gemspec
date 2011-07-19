# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "meta_tag/version"

Gem::Specification.new do |s|
  s.name        = "meta_tag"
  s.version     = MetaTag::VERSION
  s.authors     = ["pkw.de dev team"]
  s.email       = ["dev@pkw.de"]
  s.homepage    = ""
  s.summary     = %q{Create meta tags}
  s.description = %q{Create meta tags}

  s.rubyforge_project = "meta_tag"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'activesupport', '>= 3.0'
  s.add_development_dependency 'rake'
end
