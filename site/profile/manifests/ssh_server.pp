class profile::ssh_server {
  package {'openssh-server':
    ensure  => present,
  }
  service { 'sshd':
    ensure  => 'running',
    enable  => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCklK5gU30y/js09rM84JY2soiLL+++r3tHCFIyWFXmZ1xovu6F4MF7pScaGqOdGIWUg8dGrv/AisHxNNwig1nXSvv/dm+a+ejgIc9u8CnYabr4vI9m5N77NKbzmPubOKsTsH0bxh/h91nnKyFXCz2aFBoYl5UpEXrpLV1xtVGuk/2MrY3/rkie0QzWIuohlXPb4L/jrPG4N8sWM4kFVcn52k9ZsPrtfP/A4KQn4eHuFFXKTwba3cfFbKt4G4q+0aXfdKvrDnTAIfI9RK40TrN8lSlDKBGup5SHy5hULcRq4ulb1s2dozTVDW92PYUL4CXJAs7qGoUuHxghRuVz3INORLA7KOi4KEvjEegJlDAoYx3JQQ6gEtLcjRJGw0li4zsULt/+9Wwgk/cVzcuVKryY7haVSrV7Jts2Oog33xO/4vqMfegKYIHa0y9WHo9n7FZlr2cI7I9QooJbif0pBWDVmJvFPMzzvC4lApqQlbV5bSyOx6tMoZcXR8t9h+s6YwE',
  }
}
