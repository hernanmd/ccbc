accessing - public
collectMethodCritiques

	| pkg |
	pkg := self packageName asPackage.
	self critiques: (self collectMethodCritiques: pkg) asBag.