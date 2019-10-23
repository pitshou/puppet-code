# To install ElasticSearch
#
# A description of what this class does
#
# @example
#   include esbuild::install
class esbuild::install {
  package { 'install_elasticsearch':
    name    => 'elasticsearch',
    ensure  => 'present',
  }
}
