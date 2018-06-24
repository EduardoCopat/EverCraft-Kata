"
Ability Test
"
Class {
	#name : #AbilityTest,
	#superclass : #TestCase,
	#instVars : [
		'ability'
	],
	#category : #EverCraftTest
}

{ #category : #'as yet unclassified' }
AbilityTest >> forScore: aScore modifierShouldBe: aModifier [
	ability score: aScore.
	self assert: ability modifier equals: aModifier
	
]

{ #category : #tests }
AbilityTest >> testAbilityScoreModifiers [
	ability := Ability new.
	self forScore: 1 modifierShouldBe: -5.
	self forScore: 2 modifierShouldBe: -4.
	self forScore: 3 modifierShouldBe: -4.
	self forScore: 4 modifierShouldBe: -3.
	self forScore: 5 modifierShouldBe: -3.
	self forScore: 6 modifierShouldBe: -2.
	self forScore: 7 modifierShouldBe: -2.
	self forScore: 8 modifierShouldBe: -1.
	self forScore: 9 modifierShouldBe: -1.
	self forScore: 10 modifierShouldBe: 0.
	self forScore: 11 modifierShouldBe: 0.
	self forScore: 12 modifierShouldBe: 1.
	self forScore: 13 modifierShouldBe: 1.
	self forScore: 14 modifierShouldBe: 2.
	self forScore: 15 modifierShouldBe: 2.
	self forScore: 16 modifierShouldBe: 3.
	self forScore: 17 modifierShouldBe: 3.
	self forScore: 18 modifierShouldBe: 4.
	self forScore: 19 modifierShouldBe: 4.
	self forScore: 20 modifierShouldBe: 5.
]
