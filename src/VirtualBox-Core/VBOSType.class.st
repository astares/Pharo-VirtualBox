"
An OS type for the VM
"
Class {
	#name : 'VBOSType',
	#superclass : 'Object',
	#instVars : [
		'id',
		'description',
		'familyID',
		'familyDescription',
		'is64Bit'
	],
	#category : 'VirtualBox-Core-Base',
	#package : 'VirtualBox-Core',
	#tag : 'Base'
}

{ #category : 'instance creation' }
VBOSType class >> fromString: aString [

	| instance lines stream |
	instance := self new.
	lines := (aString lines collect: [ :each |
		          stream := each readStream.
		          (stream upTo: $:) -> stream upToEnd trimLeft ]) asDictionary.

	^ instance
		  id: (lines at: 'ID');
		  description: (lines at: 'Description');
		  familyID: (lines at: 'Family ID');
		  familyDescription: (lines at: 'Family Desc');
		  is64Bit: (lines at: '64 bit') = true asString;
		  yourself
]

{ #category : 'accessing' }
VBOSType >> description [

	^ description
]

{ #category : 'accessing' }
VBOSType >> description: anObject [

	description := anObject
]

{ #category : 'accessing' }
VBOSType >> familyDescription [

	^ familyDescription
]

{ #category : 'accessing' }
VBOSType >> familyDescription: anObject [

	familyDescription := anObject
]

{ #category : 'accessing' }
VBOSType >> familyID [

	^ familyID
]

{ #category : 'accessing' }
VBOSType >> familyID: anObject [

	familyID := anObject
]

{ #category : 'accessing' }
VBOSType >> id [

	^ id
]

{ #category : 'accessing' }
VBOSType >> id: anObject [

	id := anObject
]

{ #category : 'initialization' }
VBOSType >> initialize [

	super initialize.
	id := ''.
	description := ''.
	familyID := ''.
	familyDescription := ''.
	is64Bit := false
]

{ #category : 'accessing' }
VBOSType >> is64Bit [

	^ is64Bit
]

{ #category : 'accessing' }
VBOSType >> is64Bit: anObject [

	is64Bit := anObject
]

{ #category : 'printing' }
VBOSType >> printOn: aStream [

	aStream nextPutAll: self id asString
]
