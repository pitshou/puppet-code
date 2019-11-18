# This class is used to manage the kibana service by starting it and enabling to start on boot. It can be called after the kibana.yml has been modifying to get the service restarted
class kibanabuild::service_kibana {
  service { 'kibana_service':
    name       => $kibanabuild::servicename,
    ensure     => $kibanabuild::servicestate,
    enable     => $kibanabuild::serviceonboot,
    hasrestart => $kibanabuild::servicerestart,
  }
}
