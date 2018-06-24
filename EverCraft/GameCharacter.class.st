"
Game Character
"
Class {
	#name : #GameCharacter,
	#superclass : #Object,
	#instVars : [
		'name',
		'alignment',
		'hitPoints'
	],
	#category : #EverCraft
}

{ #category : #'instance creation' }
GameCharacter class >> new [
	| new |
	new := super new.
	new hitPoints: 5.
	^new.
	
]

{ #category : #accessing }
GameCharacter >> alignment [
	^alignment
]

{ #category : #accessing }
GameCharacter >> alignment: anAlignment [
	alignment := anAlignment 
]

{ #category : #accessing }
GameCharacter >> armorClass [
	^10
]

{ #category : #combat }
GameCharacter >> attacks: anEnemy withRoll: aRoll [
	| hits damage |
	hits := aRoll canHit: anEnemy armorClass.
	hits ifTrue: [ 
		damage := 1.
		(aRoll isCritical) ifTrue: [ 
			damage := damage * 2 ].
		anEnemy damages: damage. 
		].
	^hits
]

{ #category : #combat }
GameCharacter >> damages: aDamage [
	hitPoints := hitPoints - aDamage
]

{ #category : #accessing }
GameCharacter >> hitPoints [
	^hitPoints 
]

{ #category : #accessing }
GameCharacter >> hitPoints: aHitPoints [
	hitPoints := aHitPoints 
]

{ #category : #accessing }
GameCharacter >> name [
	^name
]

{ #category : #accessing }
GameCharacter >> name: aName [
	"comment stating purpose of message"

	name := aName
]
