"
Copyright (c), 2004-2007 Adrian Kuhn. This class is part of Hapax. Hapax is distributed under BSD License, see package comment.
"
Class {
	#name : #MOClusteringVector,
	#superclass : #MOArrayVector,
	#type : #variable,
	#instVars : [
		'min',
		'found',
		'index',
		'aNumber',
		'minObsol'
	],
	#category : #'MooseAlgos-Clustering'
}

{ #category : #accessing }
MOClusteringVector >> at: index put: aNumber [
	
	super at: index put: aNumber.
	(found ~~ nil and: [found = index or: [aNumber < min]])
		ifTrue: [found := nil].
	^aNumber
]

{ #category : #accessing }
MOClusteringVector >> found [
	
	^found
]

{ #category : #accessing }
MOClusteringVector >> min [
	"| min0 found0 |"
	
	found == nil ifTrue: [self update].	"min0 := Unlimited positive.
	1 to: self size do: [ :index |
		(self at: index) < min0 
			ifTrue: [ min0 := (self at: index). found0 := index ]].
	[ found0 = found ] assert."
	^min
]

{ #category : #accessing }
MOClusteringVector >> unsetAt: index [
	
	super
		at: index
		put: Unlimited positive.
	found = index ifTrue: [found := nil]
]

{ #category : #private }
MOClusteringVector >> update [
	
	min := Unlimited positive.
	1
		to: self size
		do:
			[:index | 
			(self at: index) < min
				ifTrue:
					[min := self at: index.
					found := index]]
]