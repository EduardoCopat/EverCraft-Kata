"
Game Character
"
Class {
	#name : #GameCharacter,
	#superclass : #Object,
	#instVars : [
		'name',
		'alignment',
		'hitPoints',
		'abilities',
		'armorClass'
	],
	#classInstVars : [
		'abilities'
	],
	#category : #EverCraft
}

{ #category : #'instance creation' }
GameCharacter class >> new [
	| new defaultAbilities |
	new := super new.
	defaultAbilities := Dictionary new.
	defaultAbilities at: 'Strength' put: (Ability new score: 10).
	defaultAbilities at: 'Dexterity' put: (Ability new score: 10).
	defaultAbilities at: 'Constitution' put: (Ability new score: 10).
	defaultAbilities at: 'Wisdom' put: (Ability new score: 10).
	defaultAbilities at: 'Intelligence' put: (Ability new score: 10).
	defaultAbilities at: 'Charisma' put: (Ability new score: 10).
		
	new abilities: defaultAbilities.
	new hitPoints: 5.
	new armorClass: 10.
	^ new
]

{ #category : #accessing }
GameCharacter >> abilities [
	^abilities
]

{ #category : #accessing }
GameCharacter >> abilities: theAbilities [
	abilities := theAbilities .
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
	| dexterityModifier |
	dexterityModifier := (abilities at: 'Dexterity') modifier.
	^armorClass + dexterityModifier
]

{ #category : #accessing }
GameCharacter >> armorClass: anArmorClass [
	armorClass := anArmorClass 
]

{ #category : #combat }
GameCharacter >> attacks: anEnemy withRoll: aRoll [
	| hits damage attackRoll	strengthModifier|
	strengthModifier := (abilities at: 'Strength') modifier.
	
	attackRoll := aRoll + strengthModifier.
	hits :=  attackRoll canHit: anEnemy armorClass.
	
	hits ifTrue: [ 
		damage := 1 + strengthModifier.
		(aRoll isCritical) ifTrue: [ 
			damage := damage * 2 ].
		
		(damage > 0) 
			ifTrue: [ anEnemy damages: damage ] 
			ifFalse: [ anEnemy damages: 1 ].
		].
	^hits
]

{ #category : #combat }
GameCharacter >> damages: aDamage [
	hitPoints := hitPoints - aDamage
]

{ #category : #accessing }
GameCharacter >> hitPoints [
	| constitutionModifier |
	constitutionModifier := (abilities at: 'Constitution') modifier.
	^((hitPoints + constitutionModifier) > 0)
		ifTrue: [ hitPoints + constitutionModifier ]
		ifFalse: [ 1 ]
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
