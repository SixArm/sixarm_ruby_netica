# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_netica"
  s.summary           = "SixArm.com » Ruby » Netica connector from Ruby to Norsys Netica analytics engine using JRuby and Java."
  s.version           = "1.0.8"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20145314-private.pem"
  s.cert_chain        = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform          = Gem::Platform::RUBY
  s.require_path      = "lib"
  s.has_rdoc          = true

  SOURCES             = ["environ",'net','netica','node','node_list','state']
  TESTERS             = []

  top_files           = [".gemtest", "Rakefile", "README.md", "VERSION"]
  lib_files           = ["lib/#{s.name}.rb"] + SOURCES.map{|x| "lib/#{s.name}/#{x}.rb"} 
  test_files          = ["test/#{s.name}_test.rb"] + SOURCES.map{|x| "test/#{s.name}/#{x}_test.rb"}

  s.files             = top_files + lib_files + test_files
  s.test_files        = test_files

  s.add_dependency('sixarm_ruby_ramp','>=2.7.2') 
  s.add_dependency('facets','>=2.7.0') 

end
