"
The virtual box manager
"
Class {
	#name : 'VBVirtualBoxManager',
	#superclass : 'Object',
	#category : 'VirtualBox-Core-Manage',
	#package : 'VirtualBox-Core',
	#tag : 'Manage'
}

{ #category : 'active' }
VBVirtualBoxManager class >> active [
	"Return the currently active subclass for the platform"

	^ self subclasses detect: [:each | each isActive ] ifNone: [ self error: 'No active platform' ]
]

{ #category : 'testing' }
VBVirtualBoxManager class >> isAbstract [

	^ self == VBVirtualBoxManager
]
