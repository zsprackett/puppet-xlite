# Public: Install X-Lite.app into /Applications.
#
# Examples
#
#   include xlite
class xlite(
  $ensure       = installed,
  $version      = '4.7.0_t-xlite-20140704-all-4700k_73588',
  $download_url = 'http://counterpath.s3.amazonaws.com/downloads'
) {
  package { 'X-Lite':
    ensure   => $ensure,
    source   => "${download_url}/X-Lite_${version}.dmg",
    provider => 'appdmg',
  }
}
