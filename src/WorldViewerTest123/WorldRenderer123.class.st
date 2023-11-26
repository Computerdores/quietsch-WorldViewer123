Class {
	#name : #WorldRenderer123,
	#superclass : #Morph,
	#instVars : [
		'cameraPosition',
		'tileSize',
		'textureProvider'
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
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:32'
}
WorldRenderer123 >> calculateTileBoundsFor: pos [
	| center size |
	center := self topLeft + ((pos + (0.5@0.5) - (cameraPosition \\ 1)) * tileSize).
	size := tileSize@tileSize.
	^ Rectangle center: center extent: size
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 17:53'
}
WorldRenderer123 >> cameraPosition [
	^ cameraPosition
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:48'
}
WorldRenderer123 >> cameraPosition: pos [
	cameraPosition := pos.
	self changed.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:47'
}
WorldRenderer123 >> drawOn: aCanvas [
	aCanvas fillRectangle: (self bounds) color: (Color bubblegum).
	aCanvas clipBy: self bounds during: [:canv | self drawTilesOn: canv].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 12:00'
}
WorldRenderer123 >> drawTileOn: aCanvas for: pos [
	| tileBounds imageMorph |
	tileBounds := self calculateTileBoundsFor: pos.
	imageMorph := (textureProvider at: (cameraPosition asIntegerPoint + pos)) asMorph.
	imageMorph bounds: tileBounds.
	aCanvas drawMorph: imageMorph.
	"aCanvas fillOval: tileBounds color: Color white.
	aCanvas drawString: pos asString at: tileBounds center."
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:46'
}
WorldRenderer123 >> drawTilesOn: aCanvas [
	| xcount ycount |
	xcount := ((self bounds extent x) / tileSize) floor + 2.
	ycount := ((self bounds extent y) / tileSize) floor + 2.
	0 to: (xcount-1) do: [:x |
		0 to: (ycount)-1 do: [:y |
			self drawTileOn: aCanvas for: x@y
		].
	].
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:49'
}
WorldRenderer123 >> initSize: size tileSize: tilesize [
	tileSize := tilesize.
	self extent: size.
	self center: (World center).
	textureProvider := TextureProvider123 new.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:39'
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

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 11:50'
}
WorldRenderer123 >> tileSize: tilesize [
	tileSize := tilesize.
	self changed.
]
