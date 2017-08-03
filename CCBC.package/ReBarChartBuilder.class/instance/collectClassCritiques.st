accessing - public
collectClassCritiques

	| pkg |
	pkg := self packageName asPackage.
	self critiques: (self collectClassCritiques: pkg) asBag.