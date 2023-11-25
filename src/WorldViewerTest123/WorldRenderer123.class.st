Class {
	#name : #WorldRenderer123,
	#superclass : #Morph,
	#instVars : [
		'cameraPosition'
	],
	#category : #WorldViewerTest123
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 17:53'
}
WorldRenderer123 >> cameraPosition [
	^ cameraPosition
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/25/2023 20:26'
}
WorldRenderer123 >> createTiles [
	| xcount ycount t |
	self updateBounds.
	xcount := ((self owner bounds extent x) / (self owner tileSize)) floor + 1.
	ycount := ((self owner bounds extent y) / (self owner tileSize)) floor + 1.
	"0 to: (xcount - 1) do: [:x |
		0 to: (ycount - 1) do: [:y |
			t := TileRenderer new.
			self addMorph: t.
			t setX: x Y: y.
		].
	]."
	t := TileRenderer new.
	self addMorph: t.
	t setX: 1 Y: 0.
	
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 16:08'
}
WorldRenderer123 >> drawOn: aCanvas [
	self submorphsDo: [:m|m drawOn: aCanvas]
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
	#'squeak_changestamp' : 'JPVS 11/25/2023 19:31'
}
WorldRenderer123 >> tileSize [
	^self owner tileSize
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JS 11/21/2023 13:25'
}
WorldRenderer123 >> updateBounds [
	self bounds: (self owner bounds)
]
