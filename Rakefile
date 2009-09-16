require 'rubygems'
# gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
# require './lib/meta_tag'

Hoe.plugin :newgem
# Hoe.plugin :test
# Hoe.plugin :website
# Hoe.plugin :cucumberfeatures

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'meta_tag' do
  self.developer 'pkw.de Development', 'dev@pkw.de'
  # self.post_install_message = 'PostInstall.txt' # TODO remove if post-install message not required
  # self.rubyforge_name       = self.name # TODO this is default value
  self.extra_deps         = [['activesupport','>= 2.0.2']]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

# TODO - want other tests/tasks run by default? Add them to the list
# remove_task :default
# task :default => [:spec, :features]

desc "Run unit tests"
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.ruby_opts << '-rubygems'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  t.warning = true
end