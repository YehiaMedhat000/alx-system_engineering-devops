# This is some comment

file { '/tmp/school':
    ensure  => 'file',
    path    => '/tmp/school',
    content => 'I love puppet',
    mode    => '0744',
    group   => 'www-data',
    owner   => 'www-data',
}
