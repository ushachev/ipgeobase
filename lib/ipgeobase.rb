# frozen_string_literal: true

require_relative 'ipgeobase/version'

module Ipgeobase
  autoload :Url, 'ipgeobase/url'
  autoload :HttpClient, 'ipgeobase/http_client'
  autoload :Parser, 'ipgeobase/parser'

  def self.lookup(ip)
    url = Url.build({
                      path: 'http://ip-api.com',
                      format: 'xml',
                      ip:,
                      fields: 'city,country,countryCode,lat,lon'
                    })
    response = HttpClient.get url
    Parser.parse response
  end
end
