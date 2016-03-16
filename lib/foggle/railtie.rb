require "foggle/toggle"

module Foggle
  # @!visibility private
  class Railtie < Rails::Railtie
    initializer "foggle" do
      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, Foggle::Toggle
      end
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, Foggle::Toggle
      end
    end
  end
end
