# Reconfigure the OS for 'holberton' to login and open a file without any error message

exec { 'increase-hard-file-limit-holberton-user':
  command => 'sed -i "/^holberton hard/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# increase soft file limit for Holberton user
exec { 'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/^holberton soft/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
