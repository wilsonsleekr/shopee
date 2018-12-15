Given (/^user is on their gist page$/)do
	@gist = GistPage.new
	@gist.load
 	 @mygistpage = MyGistPage.new
 	 @mygistpage.load
end


When (/^user edit gist$/)do
	@mygistpage.existing_gist.click
	@mygistpage.edit_gist
end


When (/^gist should be updated$/)do
	@mygistpage = MyGistPage.new
	@mygistpage.load
    expect(@mygistpage.description_text).to have_text('update current gist')
end