require 'rails'
require 'action_controller/railtie'
require 'action_view/railtie'

class Home < Rails::Application
  routes.append do
    root 'home#index'
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

class HomeController < ActionController::Base
  def index
  end
end

run Home.initialize!

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     3.79ms    3.03ms  76.43ms   97.23%
#     Req/Sec   282.46     42.26   404.00     89.17%
#   33796 requests in 30.05s, 7.06MB read
# Requests/sec:   1124.59
# Transfer/sec:    240.53KB
