# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild::config
class esbuild::config {
  file { 'elasticsearch_config':
    path   => '/etc/elasticsearch/elasticsearch.yml',
    content => epp('esbuild/elasticsearch.yml.epp'),
    ensure => 'present',
    notify => Service['elasticsearch_service'],
  }
}
