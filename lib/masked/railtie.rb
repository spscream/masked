require 'masked/view_helpers'

module Masked
  class Railtie < Rails::Railtie
    initializer 'masked.view_helpers' do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end