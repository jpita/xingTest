require "rails_helper"

RSpec.feature "Feature: new item" do
	scenario "Scenario: allow a user to create a new item" do
		visit('/')
		find(:xpath,"//a[@href='/items/new']").click

		fill_in "item_name", with: "the name"
		fill_in "item_description", with: "the desciption"

		find(:xpath,"//input[@name='commit']").click

		expect(page).to have_content("Item was successfully created. Name: the name Description: the desciption Edit | Back")
	end
end