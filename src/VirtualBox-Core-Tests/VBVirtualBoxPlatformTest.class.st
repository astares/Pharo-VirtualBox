"
A VBVirtualBoxPlatformTest is a test class for testing the behavior of VBVirtualBoxPlatform
"
Class {
	#name : 'VBVirtualBoxPlatformTest',
	#superclass : 'TestCase',
	#category : 'VirtualBox-Core-Tests-Utilities',
	#package : 'VirtualBox-Core-Tests',
	#tag : 'Utilities'
}

{ #category : 'tests' }
VBVirtualBoxPlatformTest >> testActive [

	self assert: VBVirtualBoxPlatform active notNil
]

{ #category : 'tests' }
VBVirtualBoxPlatformTest >> testIsActive [

	self assert: VBVirtualBoxPlatform active isActive
]
