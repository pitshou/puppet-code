# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild::copysystemdoverride
class esbuild::copysystemdoverride {
  file { '/etc/systemd/system/elasticsearch.service.d/override.conf':
    source => 'puppet:///modules/esbuild/override.conf',
    ensure => 'present',
  }
}
