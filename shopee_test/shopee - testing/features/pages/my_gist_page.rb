class MyGistPage < SitePrism::Page
  set_url "/wilsooon16"
  element :description_text,:xpath,"//span[@class='description']"
  element :existing_gist,:xpath,"//td[@id='file-shopee-txt-LC1']"
  element :updated_gist,:xpath,"//td[@id='file-shopee_update-txt-LC1']"
  element :no_gist_text,:xpath,"//h3[contains(text(),'You don’t have any gists yet.')]"
  element :your_gist,:xpath,"//div[@class='container repohead-details-container']//h1"

  def edit_gist
  		find(:xpath,"(//ul[@class='pagehead-actions']//a)[position()=1]").click
  		find(:xpath,"//input[@placeholder='Gist description…']").set "update current gist"
  		find(:xpath,"//input[@placeholder='Filename including extension…']").set "shopee_update.txt"
  		find(:xpath,"//div[@class='CodeMirror-scroll']").click
  		find(:xpath,"//pre[contains(@class,'CodeMirror-line')]").set "testing"
  		find(:xpath,"//button[contains(text(),'Update public gist')]").click
  end


  def delete_gist
    find(:xpath,"(//ul[@class='pagehead-actions']//button)[position()=1]").click
    page.driver.browser.switch_to.alert.accept
  end

end