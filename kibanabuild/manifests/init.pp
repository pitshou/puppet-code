# This class is used to define the variables that will be available and specifically which class to use.
######################################################################################################

class kibanabuild (
  String  $packagename,
  String  $packagestate,
  String  $servicename,
  String  $servicestate,
  Boolean $serviceonboot,
  Boolean $servicerestart,
  String  $serverport,
  String  $elasticsearchhosts,
  String  $kibanaindex,
  String  $kibanadefaultappid,
  String  $elasticsearchpingtimeout,
  String  $elasticsearchrequesttimeout,
  String  $elasticsearchshardtimeout,
  String  $elasticsearchstartuptimeout,
  String  $loggingdest,
) {
  contain kibanabuild::install_kibana
  contain kibanabuild::config_kibana
  contain kibanabuild::service_kibana
  
  Class['::kibanabuild::install_kibana']
  -> Class['::kibanabuild::config_kibana']
  ~> Class['::kibanabuild::service_kibana']
}
