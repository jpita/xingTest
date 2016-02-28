require 'rails_helper'

RSpec.describe Item, type: :model do
	before(:all)do
		@item = Item.new(name:"the name", description:"the description")
	end
	it "should have a matching name"do
		expect(@item.name).to eq("the name")
	end
	it "should have a matching description"do
		expect(@item.description).to eq("the description")
	end
end
