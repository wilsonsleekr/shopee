class LoginPage < SitePrism::Page
  set_url "/login"
  element :user_login_field,:xpath,"//input[@id='login_field']"
  element :user_password_field,:xpath,"//input[@id='password']"
  element :signIn_button,:xpath,"//input[@value='Sign in']"
  element :dashboard_text,:xpath,"//h2[@class='shelf-title']"


  

	def login_as_user(user_detail)

    user_login_field.set user_detail["email"]
	user_password_field.set user_detail["password"]
	signIn_button.click
 
  end




end