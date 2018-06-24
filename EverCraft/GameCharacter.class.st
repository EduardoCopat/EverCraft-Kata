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

{ #category : #accessing }
GameCharacter >> attacks: anEnemy withRoll: aRoll [
	| hits |
	hits := aRoll >= anEnemy armorClass.
	hits ifTrue: [ anEnemy damages: 1 ].
	^hits
]

{ #category : #accessing }
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
