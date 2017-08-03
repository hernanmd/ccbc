*CCBC
decimal: anInteger
	"Set the number of decimals"
	
	" Override Roassal implementation which is causing #labelConversion: to be ignored "

"	self labelConversion: [ :number | number asFloat round: anInteger ]"