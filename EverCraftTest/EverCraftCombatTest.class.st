Class {
	#name : #EverCraftCombatTest,
	#superclass : #TestCase,
	#instVars : [
		'character',
		'enemy'
	],
	#classInstVars : [
		'character',
		'enemy'
	],
	#category : #EverCraftTest
}

{ #category : #tests }
EverCraftCombatTest >> setUp [
	"Creates a character and enemy with default AC and HP"
	character := GameCharacter new.
	enemy := GameCharacter new.
]

{ #category : #tests }
EverCraftCombatTest >> testAddDexModifierToAC [
	(enemy abilities) at: 'Dexterity' put: ((Ability new) score: 20).
	
	self assert: ( character attacks: enemy withRoll: 10 ) equals: false
	
]

{ #category : #tests }
EverCraftCombatTest >> testAttackBeatingAC [
	self assert: (character attacks: enemy withRoll: 11 ) equals: true
]

{ #category : #tests }
EverCraftCombatTest >> testAttackLessThanAC [
	self assert: (character attacks: enemy withRoll: 9 ) equals: false
]

{ #category : #tests }
EverCraftCombatTest >> testAttackMeetingAC [
	self assert: (character attacks: enemy withRoll: 10 ) equals: true
]

{ #category : #tests }
EverCraftCombatTest >> testCriticalDoublesDamage [
	character attacks: enemy withRoll: 20.
	self assert: ( enemy hitPoints ) equals: 3
	
]

{ #category : #tests }
EverCraftCombatTest >> testMinimumDamageIsAlwaysOne [
	(character abilities) at: 'Strength' put: ((Ability new) score: 1).
	character attacks: enemy withRoll: 19.
	self assert: ( enemy hitPoints ) equals: 4
	
]

{ #category : #tests }
EverCraftCombatTest >> testShouldAddStrengthModifierToRollAndDamage [
	(character abilities) at: 'Strength' put: ((Ability new) score: 14).
	character attacks: enemy withRoll: 9.
	self assert: ( enemy hitPoints ) equals: 2
	
]

{ #category : #tests }
EverCraftCombatTest >> testShouldDoubleStrModifierOnCrit [
	(character abilities) at: 'Strength' put: ((Ability new) score: 12).
	character attacks: enemy withRoll: 20.
	self assert: ( enemy hitPoints ) equals: 1
	
]

{ #category : #tests }
EverCraftCombatTest >> testSuccesfulAttackHits [
	character attacks: enemy withRoll: 11.
	self assert: ( enemy hitPoints ) equals: 4
	
]
