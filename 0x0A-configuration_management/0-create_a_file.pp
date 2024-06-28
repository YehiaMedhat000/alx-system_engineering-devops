# Creates a file `/tmp/school`, with the following params

file { '/tmp/school':
    path    => '/tmp/school',
    content => 'I love puppet',
    mode    => '0744',
    group   => 'www-data',
    owner   => 'www-data',
}
