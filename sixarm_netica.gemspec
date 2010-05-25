Gem::Specification.new do |s|

  CLASSES             = %w'environ net netica node node_list state'

  s.name              = "sixarm_ruby_netica"
  s.summary           = "SixArm Ruby Gem: Netica connector from Ruby to Norsys Netica analytics engine using JRuby and Java."
  s.version           = "1.0.8"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_netica.rb'] + CLASSES.map{|c| "lib/sixarm_ruby_netica/#{c}.rb"}
  s.test_files        = []

  s.add_dependency('sixarm_ruby_ramp','>=1.7.2') 
  s.add_dependency('facets','>=2.7.0') 

end
