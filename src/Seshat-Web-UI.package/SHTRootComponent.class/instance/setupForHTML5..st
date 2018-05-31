private - updating
setupForHTML5: htmlRoot
	htmlRoot if
		lessThan;
		ie: '9';
		do: [ htmlRoot script
				url:
					'https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js';
				type: 'text/javascript' ].
	htmlRoot beHtml5