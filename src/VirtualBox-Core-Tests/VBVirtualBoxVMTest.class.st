"
A VBVirtualBoxVMTest is a test class for testing the behavior of VBVirtualBoxVM
"
Class {
	#name : 'VBVirtualBoxVMTest',
	#superclass : 'TestCase',
	#category : 'VirtualBox-Core-Tests-Base',
	#package : 'VirtualBox-Core-Tests',
	#tag : 'Base'
}

{ #category : 'tests' }
VBVirtualBoxVMTest >> testAccessingVMs [

	self assert: VBVirtualBox manager vms isCollection 
]
