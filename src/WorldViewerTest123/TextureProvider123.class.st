Class {
	#name : #TextureProvider123,
	#superclass : #Object,
	#instVars : [
		'worldMapProvider'
	],
	#category : #WorldViewerTest123
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'JS 11/21/2023 16:36'
}
TextureProvider123 class >> new: aWorldMapProvider [
	^ self basicNew initialize: aWorldMapProvider
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JS 11/21/2023 17:42'
}
TextureProvider123 >> initialize: aWorldMapProvider [
	((aWorldMapProvider respondsTo: #isWorldMapProvider) and: [aWorldMapProvider isWorldMapProvider]) ifFalse: [self error: 'TextureProvider123 initialize: expects a WorldMapProvider']. 
	worldMapProvider := aWorldMapProvider
]
