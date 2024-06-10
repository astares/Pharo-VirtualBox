"
Mac OSX platform
"
Class {
	#name : 'VBVirtualBoxOSXPlatform',
	#superclass : 'VBVirtualBoxPlatform',
	#category : 'VirtualBox-Core-Utilities',
	#package : 'VirtualBox-Core',
	#tag : 'Utilities'
}

{ #category : 'accessing - defaults' }
VBVirtualBoxOSXPlatform class >> installerExtension [

	^ 'dmg'
]

{ #category : 'testing' }
VBVirtualBoxOSXPlatform class >> isActive [

	^ Smalltalk os isMacOSX 
]

{ #category : 'accessing - defaults' }
VBVirtualBoxOSXPlatform class >> platformID [ 
	"Return a string with the platform identifier (e.g. 'Win' or 'OSX')"

	^ 'OSX'
]
