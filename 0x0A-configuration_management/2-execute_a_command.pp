# execute command
exec { 'killmenow_process':
  command => 'pkill killmenow',
  onlyif  => 'pgrep killmenow',
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
}
