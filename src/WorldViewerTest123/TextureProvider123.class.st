Class {
	#name : #TextureProvider123,
	#superclass : #Object,
	#instVars : [
		'worldMapProvider',
		'textures',
		'loader',
		'paths'
	],
	#category : #WorldViewerTest123
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JS 11/21/2023 16:36'
}
TextureProvider123 class >> new: aWorldMapProvider [
	^ self basicNew initialize: aWorldMapProvider
]

{
	#category : #loading,
	#'squeak_changestamp' : 'JS 11/23/2023 11:38'
}
TextureProvider123 >> assureIsLoaded: index [
	(self isLoaded: index) ifFalse: [self loadTexture: index]
]

{
	#category : #acessing,
	#'squeak_changestamp' : 'JS 11/23/2023 21:29'
}
TextureProvider123 >> at: pos [
	^ self get: (worldMapProvider at: pos).
]

{
	#category : #acessing,
	#'squeak_changestamp' : 'JS 11/23/2023 21:29'
}
TextureProvider123 >> get: index [
	self assureIsLoaded: index.
	^ textures at: index
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JS 11/23/2023 21:17'
}
TextureProvider123 >> initialize [
	self initialize: (WorldMapProvider123 new)
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:29'
}
TextureProvider123 >> initialize: aWorldMapProvider [
	((aWorldMapProvider respondsTo: #isWorldMapProvider) and: [aWorldMapProvider isWorldMapProvider]) ifFalse: [self error: 'TextureProvider123 initialize: expects a WorldMapProvider']. 
	worldMapProvider := aWorldMapProvider.
	textures := Dictionary new.
	"init asset loader"
	loader := GitAssetLoader for: 'quietsch-WorldViewer123'.
	loader basePath: 'assets'.
	"initialize texture paths"
	paths := Dictionary new.
	paths at: 0 put: 'grass.png'.
	paths at: 1 put: 'water.png'.
]

{
	#category : #loading,
	#'squeak_changestamp' : 'JS 11/23/2023 11:43'
}
TextureProvider123 >> isLoaded: index [
	^ textures includesKey: index
]

{
	#category : #loading,
	#'squeak_changestamp' : 'JS 11/23/2023 12:12'
}
TextureProvider123 >> loadTexture: index [
	textures at: index put: (loader loadForm: (paths at: index))
]
