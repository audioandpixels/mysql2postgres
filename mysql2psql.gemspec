# -*- encoding: utf-8 -*-
# stub: mysql2psql 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mysql2psql"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Max Lapshin <max@maxidoors.ru>", "Anton Ageev <anton@ageev.name>", "Samuel Tribehou <cracoucax@gmail.com>", "Marco Nenciarini <marco.nenciarini@devise.it>", "James Nobis <jnobis@jnobis.controldocs.com>", "quel <github@quelrod.net>", "Holger Amann <keeney@fehu.org>", "Maxim Dobriakov <closer.main@gmail.com>", "Michael Kimsal <mgkimsal@gmail.com>", "Jacob Coby <jcoby@portallabs.com>", "Neszt Tibor <neszt@tvnetwork.hu>", "Miroslav Kratochvil <exa.exa@gmail.com>", "Paul Gallagher <gallagher.paul@gmail.com>", "James Coleman <jtc331@gmail.com>", "Aaron Peckham", "James Tippett", "Tim Morgan", "dakhota", "Matthew Soldo"]
  s.date = "2012-02-13"
  s.description = "It can create postgresql dump from mysql database or directly load data from mysql to\n    postgresql (at about 100 000 records per minute). Translates most data types and indexes."
  s.email = "gallagher.paul@gmail.com"
  s.executables = ["mysql2psql"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["CHANGELOG", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.rdoc", "Rakefile", "bin/mysql2psql", "lib/mysql2psql.rb", "lib/mysql2psql/config.rb", "lib/mysql2psql/config_base.rb", "lib/mysql2psql/converter.rb", "lib/mysql2psql/errors.rb", "lib/mysql2psql/mysql_reader.rb", "lib/mysql2psql/postgres_db_writer.rb", "lib/mysql2psql/postgres_file_writer.rb", "lib/mysql2psql/postgres_writer.rb", "lib/mysql2psql/version.rb", "lib/mysql2psql/writer.rb", "mysql2psql.gemspec", "test/fixtures/config_all_options.yml", "test/fixtures/seed_integration_tests.sql", "test/integration/convert_to_db_test.rb", "test/integration/convert_to_file_test.rb", "test/integration/converter_test.rb", "test/integration/mysql_reader_base_test.rb", "test/integration/mysql_reader_test.rb", "test/integration/postgres_db_writer_base_test.rb", "test/lib/ext_test_unit.rb", "test/lib/test_helper.rb", "test/units/config_base_test.rb", "test/units/config_test.rb", "test/units/postgres_file_writer_test.rb"]
  s.homepage = "https://github.com/tardate/mysql2postgres"
  s.rubygems_version = "2.2.2"
  s.summary = "Tool for converting mysql database to postgresql"
  s.test_files = ["test/integration/convert_to_db_test.rb", "test/integration/convert_to_file_test.rb", "test/integration/converter_test.rb", "test/integration/mysql_reader_base_test.rb", "test/integration/mysql_reader_test.rb", "test/integration/postgres_db_writer_base_test.rb", "test/lib/ext_test_unit.rb", "test/lib/test_helper.rb", "test/units/config_base_test.rb", "test/units/config_test.rb", "test/units/postgres_file_writer_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.21"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.21"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.21"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_runtime_dependency(%q<mysql>, ["= 2.9.1"])
      s.add_runtime_dependency(%q<pg>, ["~> 0.17.0"])
      s.add_development_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.21"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0.21"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0.21"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<mysql>, ["= 2.9.1"])
      s.add_dependency(%q<pg>, ["~> 0.17.0"])
      s.add_dependency(%q<test-unit>, [">= 2.1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.21"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0.21"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0.21"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<mysql>, ["= 2.9.1"])
    s.add_dependency(%q<pg>, ["~> 0.17.0"])
    s.add_dependency(%q<test-unit>, [">= 2.1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9.2.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
  end
end
