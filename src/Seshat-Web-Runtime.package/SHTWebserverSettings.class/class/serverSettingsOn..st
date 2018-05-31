settings
serverSettingsOn: aBuilder
	<systemsettings>  
	(aBuilder group: #shopigent)
		label: 'Seshat';
		description: 'Seshat server settings';
		with: [ 			 
			(aBuilder setting: #resourceFolderName)
				type: #Directory;
				target: self;
				description: 'The path of a directory where static resources are hosted' ;
				label: 'Default local resource folder directory'.
			(aBuilder setting: #defaultPort)
						label: 'Default Port' ;
						description: 'The HTTP port'.	
 
		]
		