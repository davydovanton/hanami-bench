require 'spec_helper'
require_relative '../../../../apps/web/views/home/api'

describe Web::Views::Home::Api do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/api.html.erb') }
  let(:view)      { Web::Views::Home::Api.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
