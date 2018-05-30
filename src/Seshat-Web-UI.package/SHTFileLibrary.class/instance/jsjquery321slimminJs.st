uploaded metadata
jsjquery321slimminJs
	^ WAFileLibraryResource
		filepath: 'js/jquery-3.2.1.slim.min.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #jsjquery321slimminJsContent)