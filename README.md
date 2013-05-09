# GeoIP::DB

Combining the geoip gem and the database from MaxMind, this gem offers IP Geolocation in an easy to deploy package.

## Usage

```ruby
require 'geoip-db'

geoip = GeoIP::DB.instance
geoip.city('github.com')
#=> ["github.com", "207.97.227.239", "US", "USA", "United States", "NA", "CA", "San Francisco", "94110", 37.7484, -122.4156, 807, 415, "America/Los_Angeles"]
```

`GeoIP::DB.instance` returns an instance of `GeoIP` initialized with a copy of the city database. See
[geoip](https://github.com/cjheath/geoip) for further usage.


## Packaging

1. `rake update_database`
2. Update gemspec
3. `gem build geoip-db.gemspec`

## Versioning

The version represents the year and month that the database was updated. Maxmind updates the database on the first
Tuesday of each month.

---

This product includes GeoLite data created by MaxMind, available from [http://www.maxmind.com](http://www.maxmind.com).
