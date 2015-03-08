#
class standardpackages {

  include git
  include epel
  
  $pkg = [
    'screen', 'rsync', 'man', 'lsof', 'wget', 'curl', 'mlocate',
    'strace', 'telnet', 'rpm', 'zip', 'unzip', 'subversion', 'nfs-utils',
    'yum-utils'
  ]

  package { $pkg: ensure => 'installed' }

  file { '/opt' :
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

}
