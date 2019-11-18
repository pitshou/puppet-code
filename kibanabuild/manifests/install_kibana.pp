#This class is used to install kibana 
class kibanabuild::install_kibana {
  package { 'install_kibana':
    name   => $kibanabuild::packagename,
    ensure => $kibanabuild::packagestate,
  }
}
