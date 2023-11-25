Class {
	#name : #WorldRenderer123,
	#superclass : #Morph,
	#instVars : [
		'cameraPosition',
		'tileSize'
	],
	#category : #WorldViewerTest123
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'JPVS 11/25/2023 23:57'
}
WorldRenderer123 class >> withSize: size tileSize: tileSize [
	^ self new initSize: size tileSize: tileSize
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 17:53'
}
WorldRenderer123 >> cameraPosition [
	^ cameraPosition
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/26/2023 00:19'
}
WorldRenderer123 >> createTiles [
	| xcount ycount t |
	xcount := ((self bounds extent x) / tileSize) floor + 2.
	ycount := ((self bounds extent y) / tileSize) floor + 2.
	0 to: (xcount-1) do: [:x |
		0 to: (ycount)-1 do: [:y |
			t := TileRenderer new.
			self addMorph: t.
			t setX: x Y: y.
		].
	].
	
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 21:50'
}
WorldRenderer123 >> drawOn: aCanvas [
	aCanvas fillRectangle: (self bounds) color: (Color bubblegum).
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/26/2023 00:01'
}
WorldRenderer123 >> initSize: size tileSize: tilesize [
	tileSize := tilesize.
	self extent: size.
	self center: (World center).
	self createTiles.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/25/2023 20:44'
}
WorldRenderer123 >> initialize [
	super initialize.
	self clipSubmorphs: true.
	cameraPosition := 0@0.
	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 23:58'
}
WorldRenderer123 >> tileSize [
	^tileSize
]
