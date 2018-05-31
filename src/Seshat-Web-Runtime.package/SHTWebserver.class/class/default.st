private - accessing
default
	"Return the default instance"
	
	^Default ifNil: [ Default := self new ].
	 