"
A VBVirtualBoxOSXPlatformTest is a test class for testing the behavior of VBVirtualBoxOSXPlatform
"
Class {
	#name : 'VBVirtualBoxOSXPlatformTest',
	#superclass : 'TestCase',
	#category : 'VirtualBox-Core-Tests-Utilities',
	#package : 'VirtualBox-Core-Tests',
	#tag : 'Utilities'
}

{ #category : 'tests' }
VBVirtualBoxOSXPlatformTest >> testPlatformID [

	self assert: VBVirtualBoxOSXPlatform platformID equals: 'OSX'
]
