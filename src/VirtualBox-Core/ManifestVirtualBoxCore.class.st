"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestVirtualBoxCore',
	#superclass : 'PackageManifest',
	#category : 'VirtualBox-Core-Manifest',
	#package : 'VirtualBox-Core',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestVirtualBoxCore class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#VBVirtualBoxManagerWindows)) #'2024-06-10T23:52:11.983+02:00') )
]
