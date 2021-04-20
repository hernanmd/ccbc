"
Collects code critiques using Renraku/SmallLint smells and plots a histogram with occurrences and critique's titles.

See class side for examples.

Internal Representation and Key Implementation Points.

    Instance Variables
	barColor:		<Color>
	barWidth:		<Integer>
	critiques:		<Collection>
	extent:			<Point>
	legendText:		<String>
	packageName:	<String>
	view:			<RTGraphert>


    Implementation Points
"
Class {
	#name : #ReBarChartBuilder,
	#superclass : #Object,
	#instVars : [
		'legendText',
		'critiques',
		'view',
		'barColor',
		'packageName',
		'extent',
		'barWidth'
	],
	#category : #'CCBC-Core'
}

{ #category : #examples }
ReBarChartBuilder class >> example01 [

	self new 
		packageName: 'Collections-Strings';
		legendText: 'Collections - Strings';
		barWidth: 50;
		collectClassCritiques;
		buildView
]

{ #category : #examples }
ReBarChartBuilder class >> example02 [

	self new 
		packageName: 'Collections-Strings';
		legendText: 'Collections - Strings';
		barWidth: 30;
		collectMethodCritiques;
		buildView
]

{ #category : #examples }
ReBarChartBuilder class >> example03 [

	self new 
		packageName: 'Collections-Strings';
		legendText: 'Collections - Strings';
		barWidth: 50;
		collectClassCritiques;
		buildView;
		exportView.
]

{ #category : #examples }
ReBarChartBuilder class >> example04 [

	(RPackage organizer packageNames first: 4) do: [ : pkg |
		self new 
			packageName: pkg asString;
			legendText: pkg asString;
			barWidth: 30;
			collectMethodCritiques;
			buildView ]
]

{ #category : #examples }
ReBarChartBuilder class >> example05 [

	self new 
		packageNames: (self packageNamesBeginWith: 'Collections');
		legendText: 'Collections' , self platformVersion;
		barWidth: 50;
		collectPackageClassCritiques;
		buildView;
		exportView.
]

{ #category : #examples }
ReBarChartBuilder class >> example06 [
	
	self new
		packageNames: #('Iceberg' 'Iceberg-Libgit' 'Iceberg-Libgit-Filetree' 'Iceberg-Libgit-Tonel');
		legendText: 'Iceberg Class Critiques' , self platformVersion;
		barColor: Color gray;
		barWidth: 70;
		collectPackageClassCritiques;
		buildView;
		exportView
]

{ #category : #examples }
ReBarChartBuilder class >> example07 [
	
	self new
		packageNames: #('Spec-Core' 'Spec-Layout' 'Spec-PolyWidgets');
		legendText: 'Spec Method Critiques' , self platformVersion;
		barColor: Color blue;
		barWidth: 20;
		collectPackageMethodCritiques;
		buildView;
		exportView
]

{ #category : #examples }
ReBarChartBuilder class >> example08 [
	
	self new
		packageNames: (self packageNamesBeginWith: 'Ring');
		legendText: 'Ring Method Critiques' , self platformVersion;
		barColor: Color blue;
		barWidth: 20;
		collectPackageMethodCritiques;
		buildView;
		exportView
]

{ #category : #examples }
ReBarChartBuilder class >> example09 [
	
	self new
		packageNames: (RPackageOrganizer default packageNames select: [ : pkg | pkg beginsWith: 'Regex' ]);
		legendText: 'Regex Method Critiques' , self platformVersion;
		barColor: Color blue;
		barWidth: 20;
		collectPackageMethodCritiques;
		buildView;
		exportView
]

{ #category : #examples }
ReBarChartBuilder class >> example10 [
	
	self new
		packageNames: (self packageNamesBeginWith: 'GT');
		legendText: 'GT Method Critiques', self platformVersion;
		barColor: Color blue;
		barWidth: 10;
		collectPackageMethodCritiques;
		buildView;
		exportView
]

{ #category : #examples }
ReBarChartBuilder class >> packageNamesBeginWith: pkgName [

	^ RPackageOrganizer default packageNames select: [ : pkg | pkg beginsWith: pkgName ]
]

{ #category : #examples }
ReBarChartBuilder class >> platformVersion [

	^ String streamContents: [ : stream |
		stream
			space;
			nextPut: $(;
			nextPutAll: Smalltalk image version;
			nextPut: $) ]
]

{ #category : #private }
ReBarChartBuilder >> barColor [

	^ barColor
		ifNil: [ barColor := Color red ]
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> barColor: anObject [
	barColor := anObject
]

{ #category : #private }
ReBarChartBuilder >> barWidth [

	^ barWidth
		ifNil: [ barWidth := 25 ]
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> barWidth: anObject [
	barWidth := anObject
]

{ #category : #private }
ReBarChartBuilder >> buildAxis: aCollection [

	self view axisY
		color: Color black;	
		numberOfTicks: 7;
		normalFontSize;
		noDecimal.	
	self view axisX
		color: Color black;
		normalFontSize;
		labelRotation: -30;
		numberOfTicks: aCollection size;
		numberOfLabels: aCollection size;
		labelConversion: [ : g | 
			aCollection 
				detect: [ : c | c id = g asInteger ] 
				ifFound: [ : p | p title ] 
				ifNone: [ g ] ].	
]

{ #category : #private }
ReBarChartBuilder >> buildDataSet: aCollection [

	| ds |
	ds := RTData new.
	ds dotShape color: Color black; size: 10.
	ds interaction popup.
	ds points: aCollection.
	ds x: #id.
	ds y: #occurrences.
	ds dotShape rectangle color: Color blue.
	ds barShape 
		color: self barColor; 
		width: self barWidth.
	self view add: ds.
]

{ #category : #private }
ReBarChartBuilder >> buildLegend [

	| lb |
	
	lb := RTLegendBuilder new.
	lb view: self view view.
	lb 	textSize: 32;
		offset: 290;
		below;
		addColoredText: self legendText color: Color black;		
		build.	

]

{ #category : #private }
ReBarChartBuilder >> buildPopupText: ca [

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'Critique: ';
			nextPutAll: ca title;
			cr;
			nextPutAll: 'Count:';
			nextPutAll: ca occurrences asString ]
]

{ #category : #private }
ReBarChartBuilder >> buildView [

	| bag |
	
	(bag := self critiques collectReCritiques) ifEmpty: [ ^ self ].
	view := RTGrapher new
			extent: self extent;
			withoutOrigin;
			yourself.
	self buildDataSet: bag.
	self buildAxis: bag.
	self buildLegend.
	self view title: self legendText.
	view openWithToolbarEntitled: self legendText.

]

{ #category : #'accessing - public' }
ReBarChartBuilder >> collectClassCritiques [

	| pkg |
	pkg := self packageName asPackage.
	self critiques: (self collectClassCritiques: pkg) asBag.
]

{ #category : #accessing }
ReBarChartBuilder >> collectClassCritiques: pkg [

	^ (pkg classes collect: #critiques) flattened 
			collect: self parseReTitleBlock
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> collectMethodCritiques [

	| pkg |
	pkg := self packageName asPackage.
	self critiques: (self collectMethodCritiques: pkg) asBag.
]

{ #category : #accessing }
ReBarChartBuilder >> collectMethodCritiques: pkg [

	^ (pkg classes 
			collect: [ : cls | cls methods critiques ]) 
				flattened collect: self parseReTitleBlock
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> collectPackageClassCritiques [

	self critiques: (
		self packageNames collect: [ : pkgName | 
			self collectClassCritiques: pkgName asPackage ]) flattened asBag
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> collectPackageMethodCritiques [

	self critiques: (
		self packageNames collect: [ : pkgName | 
			self collectMethodCritiques: pkgName asPackage ]) flattened asBag
]

{ #category : #accessing }
ReBarChartBuilder >> critiques [
	^ critiques
]

{ #category : #accessing }
ReBarChartBuilder >> critiques: anObject [
	critiques := anObject
]

{ #category : #defaults }
ReBarChartBuilder >> defaultLabelRotation [

	^ -30
]

{ #category : #defaults }
ReBarChartBuilder >> defaultLegendTextSize [

	^ 32
]

{ #category : #defaults }
ReBarChartBuilder >> defaultNumberOfTicks [

	^ 7
]

{ #category : #private }
ReBarChartBuilder >> exportView [
	" Save receiver's view as file "

	RTPNGExporter new 
		builder: self view view;
		fileName: self view title , '.png';
		withScale;
		exportToFile. 
]

{ #category : #accessing }
ReBarChartBuilder >> extent [
	^ extent
		ifNil: [ extent := 1000 @ 400 ]
]

{ #category : #accessing }
ReBarChartBuilder >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
ReBarChartBuilder >> labelRotation [
	^ labelRotation
		ifNil: [ labelRotation := self defaultLabelRotation ]
]

{ #category : #accessing }
ReBarChartBuilder >> labelRotation: anObject [
	labelRotation := anObject
]

{ #category : #accessing }
ReBarChartBuilder >> legendText [
	^ legendText
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> legendText: aString [

	legendText := aString
]

{ #category : #accessing }
ReBarChartBuilder >> legendTextSize [
	^ legendTextSize
		ifNil: [ legendTextSize := self defaultLegendTextSize ]
]

{ #category : #accessing }
ReBarChartBuilder >> legendTextSize: anObject [
	legendTextSize := anObject
]

{ #category : #accessing }
ReBarChartBuilder >> numberOfTicks [
	^ numberOfTicks
		ifNil: [ numberOfTicks := self defaultNumberOfTicks ]
]

{ #category : #accessing }
ReBarChartBuilder >> numberOfTicks: anObject [
	numberOfTicks := anObject
]

{ #category : #accessing }
ReBarChartBuilder >> packageName [
	^ packageName
]

{ #category : #'accessing - public' }
ReBarChartBuilder >> packageName: anObject [
	packageName := anObject
]

{ #category : #accessing }
ReBarChartBuilder >> packageNames [
	^ packageNames
]

{ #category : #accessing }
ReBarChartBuilder >> packageNames: anObject [
	packageNames := anObject
]

{ #category : #accessing }
ReBarChartBuilder >> parseReTitleBlock [

	^ [ : ct | | subs |
			((subs := ct title substrings) first beginsWith: '[')
				ifTrue: [ subs allButFirst joinUsing: ' ' ]
				ifFalse: [ subs joinUsing: ' ' ] ]
]

{ #category : #accessing }
ReBarChartBuilder >> view [
	^ view
]

{ #category : #accessing }
ReBarChartBuilder >> view: anObject [
	view := anObject
]
