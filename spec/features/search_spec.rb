require "rails_helper"

RSpec.describe "As a user" do
	before :each do
		visit root_path

		select 'Fire Nation', from: 'nation'

		click_on "Search For Members"
	end
	describe "When I visit the root path and select Fire Nation" do
		it "should be on page /search" do
			expect(current_path).to eq(search_path)
		end

		it "should list the total number of people" do
			expect(page).to have_content "Total members in this nation: 97"
		end

		it "should list information about the first 25 members " do
			within "member-1" do
				expect(page).to have_content "Name: Chan (Fire Nation admiral)"
				within "allies" do
					expect(page).to have_content "Ozai"
				end
				within "enemies" do
					expect(page).to have_content "Earth Kingdom"
				end
				within "affiliation" do
					expect(page).to have_content "Fire Nation Navy"
				end
			end
		end
	end
end
