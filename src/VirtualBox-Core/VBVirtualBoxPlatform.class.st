"
Utility class to deal with platform
"
Class {
	#name : 'VBVirtualBoxPlatform',
	#superclass : 'Object',
	#category : 'VirtualBox-Core-Utilities',
	#package : 'VirtualBox-Core',
	#tag : 'Utilities'
}

{ #category : 'accessing' }
VBVirtualBoxPlatform class >> active [
	"Return the currently active subclass"

	^ self subclasses detect: [:each | each isActive ] ifNone: [ self error: 'No active platform' ]
]

{ #category : 'accessing - defaults' }
VBVirtualBoxPlatform class >> installerExtension [
	"Return a string with the installer extension (e.g. 'exe' or 'dmg')"
	
	^ self subclassResponsibility
]

{ #category : 'testing' }
VBVirtualBoxPlatform class >> isAbstract [

	^ self == VBVirtualBoxPlatform
]

{ #category : 'testing' }
VBVirtualBoxPlatform class >> isActive [
	^ self subclassResponsibility
]

{ #category : 'accessing - defaults' }
VBVirtualBoxPlatform class >> platformID [ 
	"Return a string with the platform identifier (e.g. 'Win' or 'OSX')"

	^ self subclassResponsibility 
]
