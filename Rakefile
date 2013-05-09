require 'uri'
require 'net/http'
require 'zlib'

require_relative 'lib/geoip-db'

GZIP_WBITS = (Zlib::MAX_WBITS + 32)

task :update_database do
  url = GeoIP::DB::URL

  Net::HTTP.start(url.host, url.port) do |http|
    request = Net::HTTP::Get.new(url.to_s)
    zlib    = Zlib::Inflate.new(GZIP_WBITS)

    File.open(GeoIP::DB::PATH, 'w+') do |out|
      http.request(request) do |response|
        response.read_body do |body_chunk|
          out << zlib.inflate(body_chunk)
        end
      end
    end

    zlib.finish
  end
end
