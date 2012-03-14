Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_netica"
  s.summary           = "SixArm.com » Ruby » Netica connector from Ruby to Norsys Netica analytics engine using JRuby and Java."
  s.version           = "1.0.8"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true

  SOURCES             = ['environ','net','netica','node','node_list','state']
  TESTERS             = []

  s.files             = [".gemtest","Rakefile","README.md","LICENSE.txt"]
                        ["lib/#{s.name}.rb"] + SOURCES.map{|x| "lib/#{s.name}/#{x}.rb"} +
                        ["test/#{s.name}.rb"] + TESTERS.map{|x| "test/#{s.name}/#{x}"}
  s.test_files        = SOURCES.map{|x| "test/#{s.name}/#{x}_test.rb"}

  s.add_dependency('sixarm_ruby_ramp','>=1.7.2') 
  s.add_dependency('facets','>=2.7.0') 

end
