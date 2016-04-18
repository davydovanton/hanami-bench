require 'json'

class HomeController < ApplicationController
  def api
    render text: ::JSON.generate(hello: 'world')
  end

  def web
  end
end
