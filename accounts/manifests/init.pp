class accounts {
  $rootgroup = $osfamily ? {
    'Debian'  => 'sudo',
    'RedHat'  => 'wheel',
    default   => warning('Esta distribución aún no es compatible con el módulo de cuentas'),
  }
  include accounts::groups
  user { 'jmarin':
    ensure      => present,
    home        => '/home/jmarin',
    shell       => '/bin/bash',
    managehome  => true,
    gid         => 'jmarin',
    groups      => $rootgroup,
    password    => '$1$XdLVM.ua$QJ61nclePB7suRZR08Pd1.',
  }
}
