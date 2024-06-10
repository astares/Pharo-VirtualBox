"
Installer for VirtualBox
"
Class {
	#name : 'VBVirtualBoxVersion',
	#superclass : 'Object',
	#instVars : [
		'version',
		'revision',
		'platform'
	],
	#category : 'VirtualBox-Core-Utilities',
	#package : 'VirtualBox-Core',
	#tag : 'Utilities'
}

{ #category : 'instance creation' }
VBVirtualBoxVersion class >> forVersion: aVersion revision: aRevision platform: aPlatform [
 
	^ self new 
		version: aVersion;
		revision: aRevision;
		platform: aPlatform;
		yourself
]

{ #category : 'accessing' }
VBVirtualBoxVersion >> baseURL [

	^ 'https://download.virtualbox.org/virtualbox/'
]

{ #category : 'accessing' }
VBVirtualBoxVersion >> downloadFolderURL [

	^'https://download.virtualbox.org/virtualbox/{1}/'
		format: (Array with: version)
]

{ #category : 'accessing' }
VBVirtualBoxVersion >> downloadURL [

	| url |
	url := self baseURL, '{1}/VirtualBox-{1}-{2}-{3}.{4}'.

	^ url format: (Array with: version with: revision with: platform platformID with: platform installerExtension)
]

{ #category : 'private - accessing' }
VBVirtualBoxVersion >> platform: aString [ 
	platform := aString
]

{ #category : 'private - accessing' }
VBVirtualBoxVersion >> revision: aRevisionString [ 
	revision := aRevisionString
]

{ #category : 'private - accessing' }
VBVirtualBoxVersion >> version: aVersion [ 
	version := aVersion
]
