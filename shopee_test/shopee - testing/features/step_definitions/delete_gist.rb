


When (/^user delete gist$/)do
	@mygistpage.updated_gist.click
	@mygistpage.delete_gist
end


When (/^gist should be deleted$/)do
	@mygistpage.load
	expect(@mygistpage).to have_no_gist_text
end