class SearchController < ApplicationController
	def index
		@members = NationService.get_members(params["nation"].split("_").map(&:capitalize).join(" "))
		binding.pry
	end
end
