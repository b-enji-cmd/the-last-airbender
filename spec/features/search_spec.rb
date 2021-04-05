require "rails_helper"

RSpec.describe "As a user" do
	describe "When I visit the root path and select Fire Nation" do
		it "should be on page /search" do
			visit root_path

			select 'Fire Nation', from: 'nation'

			click_on "Search For Members"
		end
	end
end
