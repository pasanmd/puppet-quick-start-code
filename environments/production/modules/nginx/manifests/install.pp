# install nginx
#
# A description of what this class does
#
# @example
#   include nginx::install
class nginx::install(
  $package_name = $nginx::params::package_name,
) inherits nginx::params {
  package { ' install_nginx':
    name   => $package_name,
    ensure => $nginx::package_ensure,	  
  }

}
