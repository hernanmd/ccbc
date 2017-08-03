accessing
collectClassCritiques: pkg

	^ (pkg classes collect: #critiques) flattened 
			collect: self parseReTitleBlock