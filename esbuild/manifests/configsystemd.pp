# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild::configsystemd
class esbuild::configsystemd {
  file { 'directorycreation':
    path   => "$esbuild::elasticsystemdpath",
    #ensure => '$esbuild::ensuredirectorystate',
    ensure =>  'directory',
  }
}
