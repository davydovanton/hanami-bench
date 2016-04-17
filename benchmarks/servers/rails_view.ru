require 'rails'
require 'action_controller/railtie'
require 'action_view/railtie'

class HomeController < Rails::Application
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
  prepend_view_path 'views'
  def index
  end
end

run HomeController.initialize!
