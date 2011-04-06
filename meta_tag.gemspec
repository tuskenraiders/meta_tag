# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{meta_tag}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["pkw.de Development"]
  s.date = %q{2011-04-06}
  s.description = %q{FIX (describe your package)}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/meta_tag.rb", "lib/meta_tag/page_definition.rb", "lib/meta_tag/tag.rb", "lib/meta_tag/title_tag.rb", "meta_tag.gemspec", "script/console", "script/destroy", "script/generate", "test/page_definition_test.rb", "test/tag_test.rb", "test/test_helper.rb", "test/title_tag_test.rb"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{meta_tag}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{FIX (describe your package)}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.0.2"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.2"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.0.2"])
      s.add_dependency(%q<hoe>, [">= 2.9.2"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.0.2"])
    s.add_dependency(%q<hoe>, [">= 2.9.2"])
  end
end
