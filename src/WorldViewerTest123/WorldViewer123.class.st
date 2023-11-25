Class {
	#name : #WorldViewer123,
	#superclass : #Object,
	#instVars : [
		'worldRenderer',
		'resolution',
		'tileSize'
	],
	#category : #WorldViewerTest123
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'JPVS 11/26/2023 00:04'
}
WorldViewer123 >> initialize [
	super initialize.
	"init vars"
	resolution := 1600@900.
	tileSize := 128.
	"init worldRenderer"
	worldRenderer := WorldRenderer123 withSize: resolution tileSize: tileSize.
	worldRenderer openInWorld
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/21/2023 12:02'
}
WorldViewer123 >> worldRenderer [
	^ worldRenderer
]
