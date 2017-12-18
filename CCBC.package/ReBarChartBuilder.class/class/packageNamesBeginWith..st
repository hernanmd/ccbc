examples
packageNamesBeginWith: pkgName

	^ RPackageOrganizer default packageNames select: [ : pkg | pkg beginsWith: pkgName ]