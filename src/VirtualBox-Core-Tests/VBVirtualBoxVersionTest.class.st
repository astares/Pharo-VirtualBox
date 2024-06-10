"
A VBVirtualBoxInstallerTest is a test class for testing the behavior of VBVirtualBoxInstaller
"
Class {
	#name : 'VBVirtualBoxVersionTest',
	#superclass : 'TestCase',
	#category : 'VirtualBox-Core-Tests-Utilities',
	#package : 'VirtualBox-Core-Tests',
	#tag : 'Utilities'
}

{ #category : 'testing' }
VBVirtualBoxVersionTest >> testDownloadFolderURL [

	| version |
	version := VBVirtualBoxVersion
		             forVersion: '7.0.18'
		             revision: 162988
		             platform: VBVirtualBoxPlatform active.
	self
		assert: version downloadFolderURL
		equals: 'https://download.virtualbox.org/virtualbox/7.0.18/'
]

{ #category : 'testing' }
VBVirtualBoxVersionTest >> testDownloadURL [

	self assert: VBVirtualBox latestVersion downloadURL isString
]

{ #category : 'testing' }
VBVirtualBoxVersionTest >> testMacOSXDownloadURL [

	| installer |
	installer := VBVirtualBoxVersion
		             forVersion: '7.0.18'
		             revision: 162988
		             platform: VBVirtualBoxOSXPlatform.
	self
		assert: installer downloadURL
		equals: 'https://download.virtualbox.org/virtualbox/7.0.18/VirtualBox-7.0.18-162988-OSX.dmg'
]

{ #category : 'testing' }
VBVirtualBoxVersionTest >> testWindowsDownloadURL [

	| installer |
	installer := VBVirtualBoxVersion
		             forVersion: '7.0.18'
		             revision: 162988
		             platform: VBVirtualBoxWindowsPlatform.
	self
		assert: installer downloadURL
		equals: 'https://download.virtualbox.org/virtualbox/7.0.18/VirtualBox-7.0.18-162988-Win.exe'
]
