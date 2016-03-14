require 'rails_helper'

RSpec.describe Item, type: :model do	
	before(:all) do
		@item=Item.create(name:"the name", description:"the description")
	end
	
	it "should have a matching name and description after creating"do
		expect(@item.name).to eq("the name")
		expect(@item.description).to eq("the description")
	end

	it "should have a new matching name and description after update"do
		@item.update(name:"new name", description:"new description")
		expect(@item.name).to eq("new name")
		expect(@item.description).to eq("new description")
	end

	it "the item should be destroyed"do
		@item.destroy
    Item.delete(1)
    Item.delete_all
		expect(Item.count).to eq(0)
		@item=nil
	end    

end
