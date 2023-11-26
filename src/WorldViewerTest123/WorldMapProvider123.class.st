Class {
	#name : #WorldMapProvider123,
	#superclass : #Object,
	#category : #WorldViewerTest123
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'JPVS 11/26/2023 12:04'
}
WorldMapProvider123 >> at: pos [
	^ self circle: pos
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'JS 11/23/2023 21:36'
}
WorldMapProvider123 >> atX: x Y: y [
	^  self at: x@y
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'JPVS 11/26/2023 12:02'
}
WorldMapProvider123 >> checkerBoard: pos [
	^ (pos x \\ 2) == (pos y \\ 2) ifTrue: 1 ifFalse: 0
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'JPVS 11/26/2023 12:05'
}
WorldMapProvider123 >> circle: pos [
	^ (((pos x ** 2) + (pos y ** 2)) < (5 ** 2)) ifTrue: 1 ifFalse: 0
]

{
	#category : #testing,
	#'squeak_changestamp' : 'JS 11/21/2023 16:43'
}
WorldMapProvider123 >> isWorldMapProvider [
	^ true
]
