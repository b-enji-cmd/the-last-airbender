require "rails_helper"

RSpec.describe NationFacade do
	describe "class methods" do
		it "should get members" do
			api ||= NationFacade.get_members("Fire Nation")
			expect(api.length).to eq 97
			expect(api.first.class).to eq Hash
			# expecting the correct number of key value pairs
			expect(api.first.length).to eq 5
		end

		it "should get total members" do
			api ||= NationFacade.total_members("Fire Nation")
			expect(api).to eq 97
		end

		it "should get first twent five members" do
			api ||= NationFacade.first_twenty_five("Fire Nation")
			expect(api.length).to eq 25
			expect(api.first.class).to eq Bender
		end
	end
end
