"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestGamesAndToys,
	#superclass : #PackageManifest,
	#category : #'GamesAndToys-Manifest'
}

{ #category : #'code-critics' }
ManifestGamesAndToys class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#DeckOfCards)) #'2022-09-29T00:38:19.137+02:00') #(#(#RGPackageDefinition #(#GamesAndToys)) #'2022-09-29T00:56:23.96+02:00') )
]

{ #category : #'code-critics' }
ManifestGamesAndToys class >> ruleNoClassCommentRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#GamesAndToys)) #'2022-09-29T00:50:53.163+02:00') )
]

{ #category : #'code-critics' }
ManifestGamesAndToys class >> ruleReClassNotCategorizedRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#GamesAndToys)) #'2022-09-29T00:51:08.642+02:00') )
]

{ #category : #'code-critics' }
ManifestGamesAndToys class >> ruleUnclassifiedMethodsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#DeckOfCards)) #'2022-09-29T00:32:01.853+02:00') #(#(#RGPackageDefinition #(#GamesAndToys)) #'2022-09-29T00:52:58.439+02:00') )
]

{ #category : #'code-critics' }
ManifestGamesAndToys class >> ruleUncommonMessageSendRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#GamesAndToys)) #'2022-09-29T00:52:51.897+02:00') )
]
