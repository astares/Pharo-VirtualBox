"
A VBOSTypeTest is a test class for testing the behavior of VBOSType
"
Class {
	#name : 'VBOSTypeTest',
	#superclass : 'TestCase',
	#category : 'VirtualBox-Core-Tests-Base',
	#package : 'VirtualBox-Core-Tests',
	#tag : 'Base'
}

{ #category : 'tests' }
VBOSTypeTest >> testFromString [

	| type |
	type := VBOSType fromString: self windows31Description.
	
	self 
		assert: type id equals: 'Windows31';
		assert: type description equals: 'Windows 3.1';
		assert: type familyID equals: 'Windows';		
		assert: type familyDescription equals: 'Microsoft Windows';					
		deny: type is64Bit 									
]

{ #category : 'tests' }
VBOSTypeTest >> testPrinting [

	| instance |
	instance := VBOSType new id: 'Windows31'; yourself.

	self assert: instance printString equals: 'Windows31'

]

{ #category : 'accessing - test data' }
VBOSTypeTest >> windows31Description [

	^ 'ID:          Windows31
Description: Windows 3.1
Family ID:   Windows
Family Desc: Microsoft Windows
64 bit:      false'
]
