accessing - public
collectPackageMethodCritiques

	self critiques: (
		self packageNames collect: [ : pkgName | 
			self collectMethodCritiques: pkgName asPackage ]) flattened asBag