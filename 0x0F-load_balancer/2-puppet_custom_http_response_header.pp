exec { 'Update':
  command  => 'apt update -y',
  user     => 'root',
  provider => 'bash'
}

-> exec { 'Upgrade':
  command  => 'apt full-update -y',
  user     => 'root',
  provider => 'bash'
}

-> package { 'nginx':
  ensure   => present,
  provider => 'apt'
}

-> file_line { 'Adding the X-Served-By header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $(hostname)'
}

-> service { 'Run nginx':
  ensure  => running,
  enable  => true,
  require => package['nginx']
}
