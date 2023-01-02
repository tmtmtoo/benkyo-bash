Describe 'test: hello.sh'
	Include './hello.sh'

	It 'say hello'
		When call hello ShellSpec
		The output should equal 'Hello ShellSpec'
	End

	It 'return success exit code'
		When call ret 0
		The status should be success
	End

	It 'return failure exit code'
		When call ret 1
		The status should be failure
	End
End

