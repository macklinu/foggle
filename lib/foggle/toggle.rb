module Foggle
  module Toggle
    def enabled?(feature)
      feature_name = "FEATURE_#{feature.to_s.upcase}"
      "true" == ENV.fetch(feature_name) { "false" }
    end
    alias feature? enabled?
  end
end
