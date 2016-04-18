require 'spec_helper'
require_relative '../../../../apps/web/controllers/home/view'

describe Web::Controllers::Home::View do
  let(:action) { Web::Controllers::Home::View.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
