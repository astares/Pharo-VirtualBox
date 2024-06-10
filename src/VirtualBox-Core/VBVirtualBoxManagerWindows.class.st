"
The virtual box manager for Windows (VBoxManage.exe)
"
Class {
	#name : 'VBVirtualBoxManagerWindows',
	#superclass : 'VBVirtualBoxManager',
	#category : 'VirtualBox-Core-Manage',
	#package : 'VirtualBox-Core',
	#tag : 'Manage'
}

{ #category : 'testing' }
VBVirtualBoxManagerWindows class >> execute: command [

	^ LibC resultOfCommand: '"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" ', command 


]

{ #category : 'testing' }
VBVirtualBoxManagerWindows class >> isActive [

	^ Smalltalk os isWindows 
]

{ #category : 'testing' }
VBVirtualBoxManagerWindows class >> osTypes [

	| specs |
	specs := (self execute: 'list --long ostypes') splitOn:
		         Character lf asString , Character lf asString.
	^ specs allButLast collect: [ :each | VBOSType fromString: each ]
]

{ #category : 'testing' }
VBVirtualBoxManagerWindows class >> vms [
	|result parts|
	result := self execute: 'list --sorted vms'.
	^ result lines collect: [:line |
		parts := line splitOn: Character space.
		VBVirtualBoxVM new
			id: parts second;
			name: parts first withoutQuoting;
			yourself
	]
]
