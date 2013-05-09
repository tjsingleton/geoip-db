Gem::Specification.new do |s|
  # required
  s.name        = "geoip-db"
  s.version     = '2013.05'
  s.date        = '2013-05-08'
  s.summary     = "Packaged IP Geolocation Database. This product includes GeoLite data created by MaxMind, available from http://www.maxmind.com."
  s.files       = [*`git ls-files`.split, *Dir['data/*']]

  # optional
  s.description = <<-EOS
Combining the geoip gem and the database from MaxMind, this gem offers IP Geolocation in an easy to deploy package.

This product includes GeoLite data created by MaxMind, available from http://www.maxmind.com.
  EOS
  s.license     = 'MIT'
  s.author      = 'TJ Singleton'
  s.email       = 'tjsingleton@me.com'
  s.homepage    = 'https://github.com/tjsingleton/geoip-db'

  s.add_dependency 'geoip'
end
