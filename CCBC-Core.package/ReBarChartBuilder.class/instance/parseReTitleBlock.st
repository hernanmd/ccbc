accessing
parseReTitleBlock

	^ [ : ct | | subs |
			((subs := ct title substrings) first beginsWith: '[')
				ifTrue: [ subs allButFirst joinUsing: ' ' ]
				ifFalse: [ subs joinUsing: ' ' ] ]