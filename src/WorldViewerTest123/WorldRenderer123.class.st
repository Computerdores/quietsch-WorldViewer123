Class {
	#name : #WorldRenderer123,
	#superclass : #Morph,
	#category : #WorldViewerTest123
}

{
	#category : #drawing,
	#'squeak_changestamp' : 'JS 11/21/2023 11:58'
}
WorldRenderer123 >> drawOn: aCanvas [
	"aCanvas fillRectangle: self bounds color: Color blue"
	aCanvas fillOval: (self bounds) color: (Color green)
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JS 11/21/2023 13:11'
}
WorldRenderer123 >> initialize [
	super initialize.
	
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'JS 11/21/2023 13:25'
}
WorldRenderer123 >> updateBounds [
	self bounds: (self owner bounds)
]