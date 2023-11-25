Class {
	#name : #TileRenderer,
	#superclass : #Morph,
	#instVars : [
		'x',
		'y'
	],
	#category : #WorldViewerTest123
}

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 20:33'
}
TileRenderer >> drawOn: aCanvas [
	self updatePosition.
	aCanvas fillOval: (self bounds) color: Color white.
	aCanvas drawString: ((x@y) asString) at: (self center)
	
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'JPVS 11/25/2023 20:49'
}
TileRenderer >> initialize [
	super initialize.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'JPVS 11/25/2023 20:29'
}
TileRenderer >> setX: xi Y: yi [
	x := xi.
	y := yi.
	self extent: (self owner tileSize)@(self owner tileSize).
	self updatePosition.
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'JPVS 11/26/2023 00:24'
}
TileRenderer >> updatePosition [
	self extent: (self owner tileSize)@(self owner tileSize).
	self topLeft: (self owner topLeft + ((x@y) - (self owner cameraPosition \\ 1) * self owner tileSize)).
]
