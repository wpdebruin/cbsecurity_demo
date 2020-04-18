/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	property name = "id" type="string";
	property name="username" type="string";
	//doesn't matter if you call this roles or permissions, it is just a list  (or array) of string values
	property name = "permissions" type="string";
	property name = "LoggedIn" type="boolean" default=false;

	/**
	 * Constructor
	 */
	User function init(){
		return this;
	}
	

	/**
	* hasPermission
	*/
	function hasPermission( permission ){
		return listFindNoCase(variables.permissions, arguments.permission)
	}

	/**
	* isLoggedIn
	*/
	function isLoggedIn(){
		return variables.LoggedIn;
	}

}