"
Virtual Box
"
Class {
	#name : 'VBVirtualBox',
	#superclass : 'Object',
	#category : 'VirtualBox-Core-Base',
	#package : 'VirtualBox-Core',
	#tag : 'Base'
}

{ #category : 'accessing' }
VBVirtualBox class >> latestVersion [
	"Return the latest version of virtual box"
	<script: 'self latestVersion inspect'>

	| array |
	array := self retrieveVersionFromWeb.
	^ VBVirtualBoxVersion
		  forVersion: array first
		  revision: array second
		  platform: VBVirtualBoxPlatform active
]

{ #category : 'private - accessing' }
VBVirtualBox class >> retrieveVersionFromWeb [
	"Try to retrieve and parse the latest version and revision number from the website
    	https://www.virtualbox.org/wiki/Downloads
	 Return an array with both.
	"
	
	| response stream major revision |
	response := ZnEasy get: 'https://www.virtualbox.org/wiki/Downloads'.
	stream := response contents readStream.
	stream upToAll: 'https://download.virtualbox.org/virtualbox/'.
	major:= stream upTo: $/.
	stream upToAll: ('VirtualBox-', major, '-').
	revision := stream upTo:  $-.
	^ Array with: major with: revision 

]
