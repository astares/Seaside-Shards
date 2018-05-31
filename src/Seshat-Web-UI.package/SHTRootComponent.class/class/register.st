private - registration
register
	"Registers the class as a seaside application"
	
	| app |
	app := WAAdmin register: self asApplicationAt: self entryPointName.
	app addLibrary: SHTFileLibrary.
	^app