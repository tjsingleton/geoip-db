require 'geoip'

class GeoIP
  module DB
    URL  = URI.parse('http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz')
    PATH = File.expand_path(File.join(File.dirname(__FILE__), '..', 'data', 'GeoLiteCity.dat'))

    def self.instance
      Thread.current[:geoip] ||= GeoIP.new(PATH)
    end
  end
end
