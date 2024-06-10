"
Windows platform
"
Class {
	#name : 'VBVirtualBoxWindowsPlatform',
	#superclass : 'VBVirtualBoxPlatform',
	#category : 'VirtualBox-Core-Utilities',
	#package : 'VirtualBox-Core',
	#tag : 'Utilities'
}

{ #category : 'accessing - defaults' }
VBVirtualBoxWindowsPlatform class >> installerExtension [

	^ 'exe'
]

{ #category : 'testing' }
VBVirtualBoxWindowsPlatform class >> isActive [

	^ Smalltalk os isWindows 
]

{ #category : 'accessing - defaults' }
VBVirtualBoxWindowsPlatform class >> platformID [

	^ 'Win'
]
