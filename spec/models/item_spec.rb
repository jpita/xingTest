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

	it "should have a new matching name"do
		@item=@item.update(name:"new name", description:"new description")
		expect(@item.name).to eq("new name")
	end
	it "should have a new matching updated description"do
		expect(@item.description).to eq("new description")
	end
	
	it "there should be one item on the list"do
		expect(Item.all).to eq(1)
	end   
	    

end
