class SearchController < ApplicationController
	def index
		@members ||= NationService.get_members(params["nation"].split("_").map(&:capitalize).join(" "))
		@total_residents = @members.length
		@first_25 = @members[0..25].map do |member|
			Bender.new(member)
		end
	end
end
