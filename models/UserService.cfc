/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	property name="wirebox" inject="wirebox";
	/**
	 * Constructor
	 */
	UserService function init(){
		
		return this;
	}
	
	/**
	* isValidCredentials
	*/
	function isValidCredentials( required username, required password ){
		return true;
	}

	/**
	* retrieveUserByUsername
	*/
	function retrieveUserByUsername( required UserName ){
		return wirebox.getInstance("User");
	}

	/**
	* retrieveUserById
	*/
	function retrieveUserById( required id ){
		return wirebox.getInstance("User");
	}


}