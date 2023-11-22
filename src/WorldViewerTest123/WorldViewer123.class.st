Class {
	#name : #WorldViewer123,
	#superclass : #Morph,
	#instVars : [
		'worldRenderer',
		'resolution'
	],
	#category : #WorldViewerTest123
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'JS 11/21/2023 13:18'
}
WorldViewer123 >> initialize [
	super initialize.
	"init vars"
	resolution := 1600@900.
	"init self"
	self clipSubmorphs: true.
	self bounds: (Rectangle center: (World center) extent: resolution).
	self color: Color black.
	"init worldRenderer"
	worldRenderer := WorldRenderer123 new.
 	self addMorph: worldRenderer.
	worldRenderer updateBounds.
	"show self"
	self openInWorld
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/21/2023 12:02'
}
WorldViewer123 >> worldRenderer [
	^ worldRenderer
]
