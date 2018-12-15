Feature: To test Gist

Background: Login
	Given user is on login page
    When login as user admin_user
    Then user should be redirected to dashboard page


Scenario: User create a public gist.
	Given user is on gist page
	When user create public gist
	Then new public gist will be created

@see
Scenario: User see their gist
	When user is on their gist page
	Then all gist should be displayed

@edit
Scenario: edit gist
 	Given user is on their gist page
 	When user edit gist
 	Then gist should be updated

@delete
Scenario: delete gist
	Given user is on their gist page
 	When user delete gist
 	Then gist should be deleted




	
	
