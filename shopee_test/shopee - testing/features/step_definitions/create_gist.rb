Given (/^user is on gist page$/)do
  @gist_page = GistPage.new
  @gist_page.load
end


When (/^user create public gist$/)do
	@gist_page.create_gist
end


When (/^new public gist will be created$/)do
	@mygistpage = MyGistPage.new
	@mygistpage.load
    expect(@mygistpage.description_text).to have_text('This is the sample test of creating public gist')
    
end


