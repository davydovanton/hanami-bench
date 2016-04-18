require 'json' 

module Web::Controllers::Home
  class Api
    include Web::Action

    def call(params)
      self.body = ::JSON.generate(hello: 'world')
    end
  end
end
