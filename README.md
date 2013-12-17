puppet-wget
===========

A puppet module for download files with wget.

## Sample Usage
Download with default parameters:
```puppet
node default {
	wget {
		source      => 'http://foo.com/bar.zip',
		destination => '/tmp',
	}
}
```

Download with timeout parameter:
```puppet
node default {
	wget {
		source      => 'http://foo.com/bar.zip',
		destination => '/tmp',
		timeout     => 30,
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
