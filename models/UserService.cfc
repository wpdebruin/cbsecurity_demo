/**
* I am a new Model Object
*/
component accessors="true" singleton {
	
	// Properties
	property name="wirebox" inject="wirebox";
	/**
	 * Constructor
	 */
	UserService function onDIComplete(){
		//some dummy initialization
		variables.Admin = wirebox.getInstance("User");
		variables.Admin.setId("AdminId");
		variables.Admin.setUserName("admin");
		variables.Admin.setPermissions("admin,user");
		variables.JohnDoe = wirebox.getInstance("User");
		variables.JohnDoe.setId("JohnDoeId");
		variables.JohnDoe.setUserName("JohnDoe");
		variables.JohnDoe.setPermissions("user");
		return this;
	}
	
	/**
	* isValidCredentials
	*/
	function isValidCredentials( required username, required password ){
		// dummy users, only possible usernames: admin and johnDoe
		// we ignore the passwords for nog. They can be set and encrypted with bcrypt module in a db.
		return listFindNoCase("admin,johndoe", arguments.username)
	}

	/**
	* retrieveUserByUsername
	*/
	function retrieveUserByUsername( required UserName ){
		//usually you will get this from some persistent storage
		if (username eq "admin") return variables.Admin;
		if (username eq "johnDoe") return variables.JohnDoe
	}

	/**
	* retrieveUserById
	*/
	function retrieveUserById( required id ){
		if (id eq "adminId") return variables.Admin;
		if (id eq "johnDoeId") return variables.JohnDoe
	}
}