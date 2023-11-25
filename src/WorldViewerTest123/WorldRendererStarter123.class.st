Class {
	#name : #WorldRendererStarter123,
	#superclass : #Object,
	#instVars : [
		'worldRenderer'
	],
	#category : #WorldViewerTest123
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'JPVS 11/26/2023 00:10'
}
WorldRendererStarter123 >> initialize [
	super initialize.
	"init worldRenderer"
	worldRenderer := WorldRenderer123 withSize: 1600@900 tileSize: 128.
	worldRenderer openInWorld
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/21/2023 12:02'
}
WorldRendererStarter123 >> worldRenderer [
	^ worldRenderer
]
