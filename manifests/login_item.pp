class xlite::login_item($ensure = present) {
  osx_login_item {
    'X-Lite':
      ensure  => $ensure,
      path    => '/Applications/X-Lite.app',
      require => Package['X-Lite'];
  }

  exec{
    'Launch X-Lite':
      command     => '/usr/bin/open /Applications/X-Lite.app',
      refreshonly => true,
      subscribe   => Package['X-Lite'],
      require     => Osx_login_item['X-Lite']
  }
}
