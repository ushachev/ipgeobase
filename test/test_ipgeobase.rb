# frozen_string_literal: true

require 'test_helper'

class TestIpgeobase < Minitest::Test
  def setup
    @ip = '8.8.8.8'
    @expected_meta = {
      city: 'Ashburn',
      country: 'United States',
      countryCode: 'US',
      lat: 39.03,
      lon: -77.5
    }
  end

  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_meta_info
    ip_meta = Ipgeobase.lookup @ip

    assert_equal ip_meta.city, @expected_meta[:city]
    assert_equal ip_meta.country, @expected_meta[:country]
    assert_equal ip_meta.countryCode, @expected_meta[:countryCode]
    assert_equal ip_meta.lat, @expected_meta[:lat]
    assert_equal ip_meta.lon, @expected_meta[:lon]
  end
end
