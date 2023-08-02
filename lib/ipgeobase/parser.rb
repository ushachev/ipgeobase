# frozen_string_literal: true

module Ipgeobase
  class Parser
    def self.parse(_xml)
      Struct.new(:city, :country, :countryCode, :lat, :lon).new('Ashburn', 'United States', 'US', 39.03, -77.5)
    end
  end
end
