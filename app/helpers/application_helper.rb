module ApplicationHelper

	# Want this to both modify the page title and the page heading and
	# return the string that is being used
	def generateTitle(page_title)
		base_title = "OpenStax College Practice Question Widget"
		if page_title.empty?


			# Return string
			base_title
		else

			# Return string
			"#{base_title} | #{page_title}"
		end
	end

end