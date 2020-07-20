class root-proj::exec inherits root-proj::params {
exec { 'rm':
command => '/bin/docker rm -f $(sudo docker ps -a -q)',
#before => Exec['build'],
#unless => '/bin/docker ps | grep website 1>/dev/null',
#notify => Exec['build'],
onlyif => '/bin/docker ps | grep website'
}
exec { 'build':
command => '/bin/docker build . -t website',
#require => Exec['rm'],
#onlyif => '/bin/docker ps | grep website'
}
exec { 'run':
command => '/bin/docker run -it -d -p 82:80 -d website',
require => Exec['build'],
}
}
