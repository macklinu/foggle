require "foggle/version"

# Environment-based feature toggles in Rails
module Foggle
end

require "foggle/railtie" if defined?(Rails::Railtie)
