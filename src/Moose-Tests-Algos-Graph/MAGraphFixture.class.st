Class {
	#name : #MAGraphFixture,
	#superclass : #Object,
	#category : #'Moose-Tests-Algos-Graph'
}

{ #category : #fixtures }
MAGraphFixture class >> aseCircuitGraph: builder [

	| nodes edges |
	nodes := $a to: $h.
	edges := #(($a $b) ($b $a) ($b $c) ($b $d) ($c $d) ($c $f) ($d $b) ($d $e) ($e $a) ($f $g) ($g $h) ($h $g)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder	

]

{ #category : #fixtures }
MAGraphFixture class >> aseSccGraph: builder [

	| nodes edges |
	nodes := $a to: $e.
	edges := #(($a $b) ($b $a) ($b $c) ($b $d) ($c $d) ($d $b) ($d $e) ($e $a)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder	

]

{ #category : #fixtures }
MAGraphFixture class >> aseWeightedCircuitGraph: builder [

	| nodes edges |
	nodes := $a to: $h.
	edges := #(($a $b 1) ($b $a 1) ($b $c 1) ($b $d 1) ($c $d 1) ($c $f 1) ($d $b 1) ($d $e 1) ($e $a 1) ($f $g 1) ($g $h 1) ($h $g 1)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second weight: #third.
	^ builder	

]

{ #category : #fixtures }
MAGraphFixture class >> complexCycleGraph: builder [

	| nodes edges |
	nodes := $a to: $h.
	edges := #(($a $b) ($a $c) ($a $g) ($b $e) ($c $b) ($c $d) ($d $f) ($f $c) ($g $h) ($g $d) ($h $g)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder
]

{ #category : #fixtures }
MAGraphFixture class >> complexWeightedGraph: builder [

	| nodes edges |
	nodes := $a to: $s.
	edges := #(($a $b 30) ($b $s 1) ($b $p 4) ($b $c 30) ($d $e 30) ($d $f 20) ($d $j 10) ($e $a 15) ($f $m 8) ($g $h 20) ($g $r 3) ($i $a 14) ($i $k 4) ($i $d 3) ($j $q 5) ($k $l 10) ($k $g 5) ($m $n 7) ($m $o 6) ($n $c 5) ($p $b 5) ($q $i 4)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second weight: #third.
	^ builder

]

{ #category : #fixtures }
MAGraphFixture class >> cycleGraph: builder [

	| nodes edges |
	nodes := $a to: $d.
	edges := #(($a $b) ($b $c) ($c $a) ($d $c)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder
]

{ #category : #fixtures }
MAGraphFixture class >> dependencyGraph: builder [

	| nodes edges |
	nodes := $a to: $k.
	edges := #(($a $b) ($a $c) ($c $a) ($c $k) ($d $e) ($d $g) ($d $i) ($e $c) ($e $f) ($f $j) ($g $f) ($g $h) ($g $i) ($h $j)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder
]

{ #category : #fixtures }
MAGraphFixture class >> moduleGraph2: builder [
	"sample graph from Habib et al for modular decomposition"

	| nodes edges |
	nodes :=  #($u $w $v $z $a $b $c $d).
	edges := #(
		($u $w)
		($w $a) ($w $b) ($w $c) ($w $d) ($w $v)
		($v $b) ($v $d) ($v $z)
		($z $b)
		($a $d)
		($c $v) ($c $z)
		($d $b) ($d $z)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder
]

{ #category : #fixtures }
MAGraphFixture class >> moduleGraph: builder [

	| nodes edges |
	nodes := #('v1' 'v2' 'v3' 'v4' 'v5'	'v6' 'v7' 'v8' 'v9' 'v10' 'v11').
	edges := #(
		('v1' 'v2') ('v1' 'v3') ('v1' 'v4')
		('v2' 'v4') ('v2' 'v5') ('v2' 'v6') ('v2' 'v7')
		('v3' 'v4') ('v3' 'v5') ('v3' 'v6') ('v3' 'v7')
		('v4' 'v2') ('v4' 'v3') ('v4' 'v5') ('v4' 'v6') ('v4' 'v7')
		('v5' 'v6') ('v5' 'v7')
		('v6' 'v8') ('v6' 'v9') ('v6' 'v10') ('v6' 'v11')
		('v7' 'v8') ('v7' 'v9') ('v7' 'v10') ('v7' 'v11')
		('v8' 'v9') ('v8' 'v10') ('v8' 'v11')
		('v9' 'v10') ('v9' 'v11')).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder
]

{ #category : #fixtures }
MAGraphFixture class >> nestedCycleGraph: builder [

	| nodes edges |
	nodes := $a to: $i.
	edges := #(($a $b) ($b $c) ($c $d) ($d $e) ($e $a) ($b $e) ($e $b) ($e $f) ($f $g) ($g $h) ($h $f) ($g $i) ($i $g)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder	

]

{ #category : #fixtures }
MAGraphFixture class >> simpleGraph: builder [

	| nodes edges |
	nodes := $a to: $d.
	edges := #(($a $b) ($b $c) ($d $c)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second.
	^ builder

]

{ #category : #fixtures }
MAGraphFixture class >> simpleWeightedGraph: builder [

	| nodes edges |
	nodes := 1 to: 5.
	edges := #((1 2 5) (1 3 4) (2 3 2) (3 4 5) (2 4 3) (4 5 1) (5 1 2) (1 5 3)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second weight: #third.
	^ builder

]

{ #category : #visualization }
MAGraphFixture class >> view: fixtureSelector [
	"
	self view: #simpleGraph:.
	self view: #cycleGraph:.
	self view: #aseCircuitGraph:.
	self view: #moduleGraph:
	self view: #nestedCycleGraph:
	"

	| view graph builder |
	view := MOViewRenderer new.
	builder := MAGraphStructure new nodeClass: MAGraphNode; edgeClass: MAGraphEdge; yourself.
	graph := self perform: fixtureSelector with: builder.
	view shape rectangle text: [:n| n model printString].
	view nodes: graph nodes.
	view edges: graph edges from: #from to: #to.
	view interaction.
	view treeLayout.
	view open
]