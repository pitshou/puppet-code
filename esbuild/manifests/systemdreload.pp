# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include esbuild::systemdreload
class esbuild::systemdreload {
  exec { 'systemdreload':
    command => 'systemctl daemon-reload',
    #command => '$esbuild::systemdreloadcommand',
    path    => ['/usr/bin']
  #  hasrestart => '$esbuild::systemdrestart',
  }
}
