def full_title(page_title)
	base_title = "Tutorial de Ruby On Rails Sample App"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end
