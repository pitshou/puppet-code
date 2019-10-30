# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild::configjvmoptions
class esbuild::configjvmoptions {
  file { 'jvmoptions_config':
    path    => '/etc/elasticsearch/jvm.options',
    source  => 'puppet:///modules/esbuild/jvm.options',
    ensure  => 'present',
    notify  => Service['elasticsearch_service'],
  }
}
