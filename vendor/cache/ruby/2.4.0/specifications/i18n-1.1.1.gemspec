# -*- encoding: utf-8 -*-
# stub: i18n 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "i18n".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/svenfuchs/i18n/issues", "changelog_uri" => "https://github.com/svenfuchs/i18n/releases", "documentation_uri" => "https://guides.rubyonrails.org/i18n.html", "source_code_uri" => "https://github.com/svenfuchs/i18n" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sven Fuchs".freeze, "Joshua Harvey".freeze, "Matt Aimonetti".freeze, "Stephan Soller".freeze, "Saimon Moore".freeze, "Ryan Bigg".freeze]
  s.date = "2018-10-14"
  s.description = "New wave Internationalization support for Ruby.".freeze
  s.email = "rails-i18n@googlegroups.com".freeze
  s.homepage = "http://github.com/svenfuchs/i18n".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubyforge_project = "[none]".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "New wave Internationalization support for Ruby".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
  end
end
