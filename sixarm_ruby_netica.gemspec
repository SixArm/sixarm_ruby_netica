# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_netica"
  s.summary           = "SixArm.com » Ruby » Netica"
  s.description       = "Netica connector from Ruby to Norsys Netica analytics engine using JRuby and Java."
  s.version           = "1.0.9"

  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.licenses          = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key       = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain        = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform          = Gem::Platform::RUBY
  s.require_path      = "lib"
  s.has_rdoc          = true

  s.files = [
    ".gemtest",
    "Rakefile",
    "README.md",
    "VERSION",
    "lib/sixarm_ruby_netica.rb",
    "lib/sixarm_ruby_netica/environ.rb",
    "lib/sixarm_ruby_netica/net.rb",
    "lib/sixarm_ruby_netica/netica.rb",
    "lib/sixarm_ruby_netica/node.rb",
    "lib/sixarm_ruby_netica/node_list.rb",
    "lib/sixarm_ruby_netica/state.rb",
  ]

  s.test_files = [
    #"test/sixarm_ruby_netica_test.rb",
    #"test/sixarm_ruby_netica/environ_test.rb",
    #"test/sixarm_ruby_netica/net_test.rb",
    #"test/sixarm_ruby_netica/netica_test.rb",
    #"test/sixarm_ruby_netica/node_test.rb",
    #"test/sixarm_ruby_netica/node_list_test.rb",
    #"test/sixarm_ruby_netica/state_test.rb",
  ]

  s.add_dependency('sixarm_ruby_ramp', '>= 4.2.2', '< 5')
  s.add_dependency('facets', '>= 2.7.0', '< 3')

end
