# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild
class esbuild ( 
  String  $packagename,
  String  $packagestate,
  String  $servicename,
  String  $servicestate,
  Boolean $serviceonboot,
  Boolean $servicerestart,
  String  $clustername,
  String  $nodeattrrackid,
  String  $nodeattravailabilityzone,
  String  $clusterroutingallocationawarenessattributes,
  String  $pathdata,
  String  $pathlogs,
  Boolean $bootstrapmemorylock,
  Boolean $bootstrapsystemcallfilter,
  String  $networkhost,
  String  $port,
  String  $mymasters,
  String  $elasticsystemdpath,
  String  $ensuredirectorystate,
  String  $sourceoftheoverride,
  String  $elasticsystemdcopyfilestate,
  String  $elasticsystemdoverridepath,
  String  $systemdreloadcommand,
  Boolean $systemdrestart,
  Boolean $actiondestructiverequiresname,
) {
  contain esbuild::install
  contain esbuild::configsystemd
  contain esbuild::copysystemdoverride
  contain esbuild::systemdreload
  contain esbuild::configjvmoptions
  contain esbuild::config
  contain esbuild::service

  Class['::esbuild::install']
  -> Class['::esbuild::configsystemd']
  -> Class['::esbuild::copysystemdoverride']
  ~> Class['::esbuild::systemdreload']
  -> Class['::esbuild::configjvmoptions']
  -> Class['::esbuild::config']
  ~> Class['::esbuild::service']
}
