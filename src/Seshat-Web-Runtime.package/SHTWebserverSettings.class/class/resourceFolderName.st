accessing
resourceFolderName

	^ResourceFolderName ifNil: [
		ResourceFolderName := (FileSystem workingDirectory / 'seshat') fullName ]
 