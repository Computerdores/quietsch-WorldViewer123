Class {
	#name : #WorldViewer123,
	#superclass : #Morph,
	#instVars : [
		'worldRenderer',
		'resolution',
		'tileSize'
	],
	#category : #WorldViewerTest123
}

{
	#category : #drawing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 15:51'
}
WorldViewer123 >> drawOn: aCanvas [
	aCanvas fillRectangle: (self bounds) color: (self color).
	aCanvas drawMorph: worldRenderer
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'JPVS 11/25/2023 16:30'
}
WorldViewer123 >> initialize [
	super initialize.
	"init vars"
	resolution := 1600@900.
	tileSize := 128.
	"init self"
	self clipSubmorphs: true.
	self bounds: (Rectangle center: (World center) extent: resolution).
	self color: Color black.
	"init worldRenderer"
	worldRenderer := WorldRenderer123 new.
 	self addMorph: worldRenderer.
	worldRenderer createTiles.
	"show self"
	self openInWorld
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/25/2023 16:34'
}
WorldViewer123 >> tileSize [
	^ tileSize
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/21/2023 12:02'
}
WorldViewer123 >> worldRenderer [
	^ worldRenderer
]
