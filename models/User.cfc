/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	

	/**
	 * Constructor
	 */
	User function init(){
		
		return this;
	}
	
	/**
	* getId
	*/
	function getId(){
		return "someId";
	}

	/**
	* hasPermission
	*/
	function hasPermission(){
		return true;
	}

	/**
	* isLoggedIn
	*/
	function isLoggedIn(){
		return true;
	}


}