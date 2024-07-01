# Automatically configure ssh using puppet

file { '/etc/ssh/ssh_config'
    ensure => 'present',
    content => "
    Host*
    PasswordAuthentication no
    IdentityFile ~/.ssh/school
    ",
}