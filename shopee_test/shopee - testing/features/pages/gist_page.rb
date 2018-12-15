class GistPage < SitePrism::Page
  set_url "/"
  element :description_field,:xpath,"//input[@placeholder='Gist description…']"
  element :filename_field,:xpath,"//input[@placeholder='Filename including extension…']"
  element :body_field,:xpath,"//div[@class='CodeMirror-scroll']"
  element :body_field_text,:xpath,"//pre[contains(@class,'CodeMirror-line')]"
  element :button_create,:xpath,"//button[@value='1']"

  def create_gist
  	description_field.set "This is the sample test of creating public gist"
	filename_field.set "Shopee.txt"
	body_field.click
	body_field_text.set "vcvcvcv"
	button_create.click
  end

  

end