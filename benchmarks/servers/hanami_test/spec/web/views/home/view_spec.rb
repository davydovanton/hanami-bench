require 'spec_helper'
require_relative '../../../../apps/web/views/home/view'

describe Web::Views::Home::View do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/view.html.erb') }
  let(:view)      { Web::Views::Home::View.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
