accessing
collectMethodCritiques: pkg

	^ (pkg classes 
			collect: [ : cls | cls methods critiques ]) 
				flattened collect: self parseReTitleBlock