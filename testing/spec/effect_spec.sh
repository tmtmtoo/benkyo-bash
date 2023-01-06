Describe 'test: effect.sh'

	It 'Create a directory with -d option'
		When run ./effect.sh -d foo
		The dir ./foo should be exist
		The status should be success		
	End

	It 'Fails if no value for the -d option'
		When run ./effect.sh -d
		The stderr should be present
		The status should be failure
	End

	It 'Create a file with -f option'
		When run ./effect.sh -f bar
		The file ./bar should be exist
		The status should be success
	End

	It 'Fails if no value for the -f option'
		When run ./effect.sh -f
		The stderr should be present
		The status should be failure
	End

	It 'Both -d and -f options are OK'
		When run ./effect.sh -d baz -f baz/bar
		The dir baz should be exist
		The file baz/bar should be exist
		The status should be success
	End

	It 'Fails if either the -f or -d option is not specified'
		When run ./effect.sh
		The stderr should be present
		The status should be failure
	End

End
