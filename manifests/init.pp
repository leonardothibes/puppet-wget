class wget
{
	define fetch(
		$source      = $title,
		$destination = '/tmp/download.wget',
		$timeout     = '30',
		$owner       = 'root',
		$group       = 'root',
		$nocheckcert = false,
	) {
		include wget::dependencies
		$nocheckcmd = $nocheckcert ? {
			true  => '--no-check-certificate ',
			false => '',
		}
		$command = "wget ${nocheckcmd}${source} -O ${destination}"
		exec {"wget-${source}":
			command => $command,
			path    => '/usr/bin',
			require => Package['wget'],
		}
	}
}
