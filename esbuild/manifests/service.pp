# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild::service
class esbuild::service {
  service { 'elasticsearch_service':
    name       => $esbuild::servicename,
    ensure     => $esbuild::servicestate,
    enable     => $esbuild::serviceonboot,
    hasrestart => $esbuild::servicerestart,
  }
}
