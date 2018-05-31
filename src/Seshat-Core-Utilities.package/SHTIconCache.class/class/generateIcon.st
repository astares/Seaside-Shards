private - icon content
generateIcon
	<script>
	
	| base64Contents fileName contentsMethod iconMethod iconName |  
	fileName := UIManager default fileOpen: 'Icon file' extensions: #('png').
	fileName ifNil: [ ^ self ].
	iconName := UIManager default request: 'Icon name' initialAnswer: 'blank'.
	iconName ifNil: [ ^ self ].
	fileName encoder: (ZnCharacterEncoder newForEncoding: 'iso-8859-1'). 
	base64Contents := (Base64MimeConverter mimeEncode: fileName).
	fileName close.
	contentsMethod := String
		streamContents: [ :s | 
			s
				nextPutAll: iconName;
				nextPutAll: 'IconContents';
				cr;
				cr;
				tab;
				nextPut: $^;
				nextPut: $';
				nextPutAll: base64Contents;
				nextPut: $' ].
	iconMethod := String
		streamContents: [ :s | 
			s
				nextPutAll: iconName;
				nextPutAll: 'Icon';
				cr;
				tab;
				nextPutAll: '<script: ''self ';
				nextPutAll: iconName;
				nextPutAll: 'Icon';
				nextPutAll: ' inspect''>';
				cr;
				cr;
				tab;
				nextPutAll: '^self iconNamed: #';
				nextPutAll: iconName;
				nextPutAll: 'Icon' ].
	self class compile: contentsMethod classified: #'private - icons'.
	self class compile: iconMethod classified: #icons