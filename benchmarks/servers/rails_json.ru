require 'json'
require 'rails'
require 'action_controller/railtie'
require 'action_view/railtie'

class HelloWorld < Rails::Application
  routes.append do
    root 'hello#world'
  end

  config.cache_classes = true
  config.eager_load = true
  config.secret_key_base = '49837489qkuweoiuoqwehisuakshdjksadhaisdy78o34y138974xyqp9rmye8yrpiokeuioqwzyoiuxftoyqiuxrhm3iou1hrzmjk'

  ['Rack::Lock', 'ActionDispatch::Flash', 'ActionDispatch::BestStandardsSupport',
   'Rack::Sendfile', 'ActionDispatch::Static', 'Rack::MethodOverride',
   'ActionDispatch::RequestId', 'Rails::Rack::Logger',
   'ActionDispatch::ShowExceptions', 'ActionDispatch::DebugExceptions',
   'ActionDispatch::RemoteIp', 'ActionDispatch::Callbacks',
   'ActionDispatch::Cookies',  'ActionDispatch::Session::CookieStore',
   'ActionDispatch::ParamsParser', 'Rack::Head', 'Rack::ConditionalGet',
   'Rack::ETag'].each do |middleware|
     config.middleware.delete(middleware)
   end
end

class HelloController < ActionController::Base
  def world
    render text: ::JSON.generate(hello: 'world')
  end
end

run HelloWorld.initialize!

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     3.69ms    4.82ms 127.58ms   98.10%
#     Req/Sec   302.97     49.37   450.00     84.65%
#   36215 requests in 30.05s, 7.98MB read
# Requests/sec:   1205.25
# Transfer/sec:    271.91KB
