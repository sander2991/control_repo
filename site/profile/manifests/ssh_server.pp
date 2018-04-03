class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9d+CU8Z3mRI5SjXu3tF7nk19EH1NKnvUaVot8sUPETlfe94gleMAfX8b7ZEmIzYWtcrDYN16J6PoOBoVdimzxfJ/VY92/eHEPgODyorzbkopIu+TmqwzXsnxAvjpdMz+LSt2WYpYcZxCsYEHIbhJOUfmIh4iJ61Xne7CgHnkOylM0bJ8m32WUjnrzy+o3oaQUmiHPVWYmu4Qo/EDrkxVeZufBDokeO6hwTU8JYH+vwiH7DyxIdE7flNucZokdvzNg/UsefCbOb92dTH7Htsizw10Kmns6HXiqk8tWA0M4/givFaOLSU+7YttZZUS0ji+LNvsoLB1SyV9LqBwIXR63',
  }
}
