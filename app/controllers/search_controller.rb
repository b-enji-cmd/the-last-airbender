class SearchController < ApplicationController
	def index
		formatted = params["nation"].split("_").map(&:capitalize).join(" ")
		@total_residents ||= NationFacade.total_members(formatted)
		@first_25 ||= NationFacade.first_twenty_five(formatted)
	end
end
