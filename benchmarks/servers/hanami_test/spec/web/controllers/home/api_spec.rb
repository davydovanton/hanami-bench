require 'spec_helper'
require_relative '../../../../apps/web/controllers/home/api'

describe Web::Controllers::Home::Api do
  let(:action) { Web::Controllers::Home::Api.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
