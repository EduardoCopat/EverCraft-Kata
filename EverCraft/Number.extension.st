Extension { #name : #Number }

{ #category : #'*EverCraft-AttackRoll' }
Number >> canHit: armorClass [
	^self >= armorClass
]

{ #category : #'*EverCraft-AttackRoll' }
Number >> isCritical [
	^self = 20
]
