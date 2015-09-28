module ApplicationHelper
	def active_class(link_path)
		if current_page?(link_path)
			"active"
		else
			""
		end
	end
end
