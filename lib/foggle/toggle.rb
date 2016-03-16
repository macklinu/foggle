module Foggle
  # Namespace for the feature toggle implementation.
  module Toggle
    # Checks if a feature is enabled.
    #
    # @example using a Symbol as a parameter
    #   # export FEATURE_COOL_STUFF=true
    #   enabled? :cool_stuff
    #   # => true
    #
    #   # export FEATURE_COOL_STUFF=false
    #   enabled? :cool_stuff
    #   # => false
    #
    # @example using a String as a parameter
    #   # export FEATURE_COOL_STUFF=true
    #   enabled? "cool_stuff"
    #   # => true
    #
    #   # export FEATURE_COOL_STUFF=false
    #   enabled? "cool_stuff"
    #   # => false
    #
    #   # export FEATURE_COOL_STUFF=true
    #   enabled? "COOL_STUFF"
    #   # => true
    #
    # @example using the +feature?+ alias method
    #   # export FEATURE_COOL_STUFF=true
    #   feature? :cool_stuff
    #   # => true
    #
    #   # export FEATURE_COOL_STUFF=false
    #   feature? :cool_stuff
    #   # => false
    #
    # @param [Symbol, String] feature the snake_case +NAME+ of a feature used
    #   in a +FEATURE_NAME+ environment variable.
    # @return [Boolean] if a feature is enabled.
    def enabled?(feature)
      feature_name = "FEATURE_#{feature.to_s.upcase}"
      "true" == ENV.fetch(feature_name) { "false" }
    end
    alias feature? enabled?
  end
end
