class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGdc6tFxcrgL7rJCCc5ejk4iyX3Dz2rgvuwvb3+7dHmw26IGdSRHrcXI3S/6PRq09Xqt3EGRk4xVRmuxLLiP2fQcdmkFfesmdp7HkfUwDgB5VXQzNAXPG70C4mHmq+4DsqOKjlas0olSS41e0xXfWdH5cZGd0UHlI6YGxv9+uuvCSKngv8mSXNd6yhjjj96kFReJJbUFUl5GSGzizXdBOrw1+/oJnyozoVUt60jk1kw+xgWkYq/IPTa5x7qia6WEwgm44MamTTKMeh/V3XY7msTmHPakcgCFDEsFFeCimDzU/LZ/CbhsE6q4R4dHnQ2tVYaR6+3k6aP00hipyVKDAv',
	}  
}
