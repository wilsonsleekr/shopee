Given (/^user is on login page$/)do
  @login_page = LoginPage.new
  @login_page.load
end


When (/^login as user (.*)$/)do |user_type_details|

	@user = LoginRequirenment.new.load_user(user_type_details)
  	@login_page.login_as_user(@user)
	
end


Then (/^user should be redirected to dashboard page$/)do
  expect(@login_page.dashboard_text).to have_text('Learn Git and GitHub without any code!')
end


