"
A VM inside of virtual box
"
Class {
	#name : 'VBVirtualBoxVM',
	#superclass : 'Object',
	#instVars : [
		'id',
		'name'
	],
	#category : 'VirtualBox-Core-Base',
	#package : 'VirtualBox-Core',
	#tag : 'Base'
}

{ #category : 'accessing' }
VBVirtualBoxVM >> id [

	^ id
]

{ #category : 'accessing' }
VBVirtualBoxVM >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
VBVirtualBoxVM >> name [

	^ name
]

{ #category : 'accessing' }
VBVirtualBoxVM >> name: anObject [

	name := anObject
]
