puppet-wget
===========

A puppet module for download files with wget.

## Sample Usage
Download with default parameters
```
node default {
	wget {
		source      => 'http://foo.com/bar.zip',
		destination => '/tmp',
	}
}
```

Download with timeout parameter
```
node default {
	wget {
		source      => 'http://foo.com/bar.zip',
		destination => '/tmp',
		timeout     => 30,
	}
}
```

Download with user owner and group of file
```
node default {
	wget {
		source      => 'http://foo.com/bar.zip',
		destination => '/tmp',
		owner       => 'www-data',
		group       => 'admin',
	}
}
```

Download and overwrite the file
```
node default {
	wget {
		source      => 'http://foo.com/bar.zip',
		destination => '/tmp',
		overwrite   => true,
	}
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-wget/issues)
