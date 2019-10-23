# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx
class nginx (
  $package_name  = $nginx::params::package_name,
  $service_name  = $nginx::paramas::service_name,
  $config_path   = $nginx::params::config_name,
  $config_source = $nginx::params::config_source,
  $vhosts_dir    = $nginx::params::vhosts_dir,
  String $package_ensure,
  String $config_ensure,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $service_hasrestart,
  String $vhosts_port,
  String $vhosts_root,
  String $vhosts_name,
) inherits nginx::params {

  contain nginx::install
  contain nginx::config
  contain nginx::service

  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']
}
