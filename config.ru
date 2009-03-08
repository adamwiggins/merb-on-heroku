require 'merb-core'
Merb::Config.setup(:merb_root => ".", :environment => ENV['RACK_ENV'])
Merb.environment = Merb::Config[:environment]
Merb.root = Merb::Config[:merb_root]
Merb::BootLoader.run

use Merb::Rack::Static, Merb.dir_for(:public)
run Merb::Rack::Application.new
