"
A VBVirtualBoxTest is a test class for testing the behavior of VBVirtualBox
"
Class {
	#name : 'VBVirtualBoxTest',
	#superclass : 'TestCase',
	#category : 'VirtualBox-Core-Tests-Base',
	#package : 'VirtualBox-Core-Tests',
	#tag : 'Base'
}

{ #category : 'tests' }
VBVirtualBoxTest >> testRetrieveVersionFromWeb [

	| array |
	array := VBVirtualBox retrieveVersionFromWeb.
	self assert: array size equals: 2.
	self assert: array first isString.
	self assert: array second isString.
	
]
