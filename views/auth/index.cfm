<cfoutput>
    <h1>Auth.login</h1>
    
    
    <cfif auth().isLoggedIn()>
        You are logged in as #auth().user().getUserName()# with id #auth().getUserId()#
    <cfelse>
        You are not logged in
    </cfif>
<p>
    <a href="#event.buildLink( to="Auth.login", querystring="username=admin&password=dummy" )#">Log in as SuperAdmin</a>
</p>
<p>
    <a href="#event.buildLink( to ="Auth.login", querystring="username=johnDoe&password=dummy"  )#">Log in as  John Doe </a>
</p>
<p>
    <a href="#event.buildLink( to ="Auth.login", querystring="username=invalidUser&password=dummy" )#">Try this invalid user</a>
</p>
<p>
    <a href="#event.buildLink( "Auth.logout" )#">Or logout!</a>
</p>

<h2>Try these urls</h2>
<p>
    <a href="#event.buildLink( "SecuredHandler.doSomethingElse" )#">everyone</a>
</p>
<p>
    <a href="#event.buildLink( "SecuredHandler.index" )#">Admin only</a>
</p>
<p>
    <a href="#event.buildLink( "SecuredHandler.doSomething" )#">User JohnDoe with user permission and Admin</a>
</p>


</cfoutput>