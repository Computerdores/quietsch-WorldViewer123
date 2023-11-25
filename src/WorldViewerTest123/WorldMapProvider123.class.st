Class {
	#name : #WorldMapProvider123,
	#superclass : #Object,
	#category : #WorldViewerTest123
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/22/2023 09:14'
}
WorldMapProvider123 >> at: pos [
	^ (pos x \\ 2) == (pos y \\ 2) ifTrue: 1 ifFalse: 0
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/23/2023 21:36'
}
WorldMapProvider123 >> atX: x Y: y [
	^  self at: x@y
]

{
	#category : #testing,
	#'squeak_changestamp' : 'JS 11/21/2023 16:43'
}
WorldMapProvider123 >> isWorldMapProvider [
	^ true
]
