generating
newID
	"Return a String representing a new unique ID"

	^(UUID new asString copyReplaceAll: '-' with: '') asUppercase 