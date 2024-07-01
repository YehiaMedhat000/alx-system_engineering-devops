# Automatically configure ssh using puppet

file_line { '/etc/ssh/ssh_config':
    ensure => 'present',
    content => "
    Host*
    PasswordAuthentication no
    IdentityFile ~/.ssh/school
    ",
}
