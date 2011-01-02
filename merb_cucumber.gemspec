# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb_cucumber}
  s.version = "0.5.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roman Gonzalez", "David Leal", "Xavier Lange"]
  s.date = %q{2009-01-09}
  s.description = %q{Cucumber integration for Merb}
  s.email = ["romanandreg@gmail.com", "dgleal@gmail.com"]
  s.extra_rdoc_files = ["README.textile", "LICENSE", "TODO"]
  s.files = Dir['LICENSE', 'README.textile','Rakefile','TODO','Generators','lib/**/*','spec/*']
  s.has_rdoc = true
  s.homepage = %q{http://github.com/david/merb_cucumber}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{merb}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Cucumber integration for Merb}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb-core>, ["~> 1.0"])
      s.add_runtime_dependency(%q<cucumber>, [">= 0.1.14"])
    else
      s.add_dependency(%q<merb-core>, ["~> 1.0"])
      s.add_dependency(%q<cucumber>, [">= 0.1.14"])
    end
  else
    s.add_dependency(%q<merb-core>, ["~> 1.0"])
    s.add_dependency(%q<cucumber>, [">= 0.1.14"])
  end
end
