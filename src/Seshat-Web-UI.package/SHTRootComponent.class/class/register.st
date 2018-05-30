private - registration
register
	"Registers the class as a seaside application"
	
	| app |
	app := WAAdmin register: self asApplicationAt: self contextRoot.
	app addLibrary: SHTFileLibrary.
	^app