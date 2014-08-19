$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "capistrano-git-submodules/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "capistrano-git-submodules"
  s.version     = CapistranoGitSubmodules::VERSION
  s.authors     = ["Tiago Scolari"]
  s.email       = ["tscolari@gmail.com"]
  s.homepage    = "http://github.com/tscolari/capistrano-git-submodules"
  s.summary     = "Replacement for capistrano git, to use submodule"
  s.description = "Simple override of the capistrano task, to include git-submodule."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "capistrano", "~> 3.0"
end
