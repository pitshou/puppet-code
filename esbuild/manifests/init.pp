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
  String  $pathdata,
  String  $pathlogs,
  Boolean $bootstrapmemorylock,
  Boolean $bootstrapsystemcallfilter,
  String  $networkhost,
  String  $port,
  String  $discoveryzenpingunicasthosts,
  String  $discoveryzenminimummasternodes,
  Boolean $actiondestructiverequiresname,
  String  $nodeattravailabilityzone,
  String  $nodeattrrackid,
  String  $clusterroutingallocationawarenessattributes
) {
  contain esbuild::install
  contain esbuild::config
  contain esbuild::service

  Class['::esbuild::install']
  -> Class['::esbuild::config']
  ~> Class['::esbuild::service']
}
