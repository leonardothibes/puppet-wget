class wget
{
	define fetch(
		$source      = $title,
		$destination = '/tmp/download.wget',
		$timeout     = '0',
		$nocheckcert = false,
	) {
		include wget::dependencies
		$nocheckcmd = $nocheckcert ? {
			true  => '--no-check-certificate ',
			false => '',
		}
		exec {"wget-${source}":
			command => "wget ${nocheckcmd}${source} -O ${destination}",
		    timeout => $timeout,
			path    => '/usr/bin',
			require => Package['wget'],
		}
	}
}
