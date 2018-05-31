private - running
start
	"Start the webserver."
	
	ZnZincStaticServerAdaptor startOn: self defaultPort andServeFilesFrom: self resourceFolderName 