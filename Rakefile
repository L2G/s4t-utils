#!/usr/bin/env ruby
#
#  Created by Brian Marick on 2007-07-03.
#  Copyright (c) 2007. All rights reserved.

require 'hoe'
$:.unshift(File.join(Dir.pwd, "lib"))
require 's4t-utils/version'

PROJECT='s4t-utils'
THIS_RELEASE=S4tUtils::Version

Hoe.plugin :bundler, :gemspec2
Hoe.spec(PROJECT) do |p|
  p.rubyforge_name = PROJECT
  p.version = THIS_RELEASE
  p.changes = "See History.txt"
  p.developer("Brian Marick", "marick@exampler.com")
  p.developer("Larry Gilbert", "larry@l2g.to")
  p.description = "Unified interface to command-line, environment, and configuration files."
  p.summary = p.description
  p.extra_deps = []
  p.extra_dev_deps << ['hoe-bundler', '~>1.1']
  p.extra_dev_deps << ['hoe-gemspec2', '~>1.0']
  p.test_globs = ['test/**/*tests.rb']
  #p.rdoc_pattern = %r{README.txt|History.txt|lib/s4t-utils.rb|lib/s4t-utils/.+\.rb}
  p.url = "http://s4t-utils.rubyforge.org"
  p.remote_rdoc_dir = 'rdoc'
end

require 's4t-utils/hoelike'
HoeLike.new(:project => PROJECT, :this_release => THIS_RELEASE,
            :login => "marick@rubyforge.org",
            :web_site_root => 'homepage', 
            :export_root => "#{S4tUtils.find_home}/tmp/exports")
