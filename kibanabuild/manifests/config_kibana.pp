# This class is used to put the kibana.yml config file in place by using the template templates/kibana.yml.epp and after that it's notifying the service class to restart kibana 
class kibanabuild::config_kibana {
  file { 'kibana_config':
    path    => '/etc/kibana/kibana.yml',
    content => epp('kibanabuild/kibana.yml.epp'),
    ensure  => 'present',
    notify  => Service['kibana_service'],
  }
}
