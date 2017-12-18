accessing - public
collectPackageClassCritiques

	self critiques: (
		self packageNames collect: [ : pkgName | 
			self collectClassCritiques: pkgName asPackage ]) flattened asBag