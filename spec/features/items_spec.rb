require "rails_helper"
require 'pry'

RSpec.feature "Feature: create, update, show and destroy items" do
	Capybara.default_driver = :selenium

	scenario "Scenario: allow a user to create a new item" do
		visit('/')
		find(:xpath,"//a[@href='/items/new']").click

		fill_in "item_name", with: "the name"
		fill_in "item_description", with: "the desciption"

		find(:xpath,"//input[@name='commit']").click

		expect(page).to have_content("Item was successfully created. Name: the name Description: the desciption Edit | Back")

		find(:xpath,"//a[@href='/items']").click
		Capybara.default_selector = :xpath
		page.all("//a[@data-method='delete']")[0].click
		page.driver.browser.switch_to.alert.accept
		find(:xpath,"//p[@id='notice']")
		expect(page).to have_content('Item was successfully destroyed.')
	end

	# scenario "Scenario: allow a user to update the description and name of an item" do
	# 	visit('/')
	# 	# in case of existing more than one element we'd have to make some changes here
	# 	# tried with capybara default browser but couldn't make it work so did it with selenium
	# 	find(:xpath,"//a[text()='Edit']").click

	# 	fill_in "item_name", with: "the name"
	# 	fill_in "item_description", with: "the desciption"

	# 	find(:xpath,"//input[@name='commit']").click

	# 	expect(page).to have_content("Item was successfully created. Name: the name Description: the desciption Edit | Back")
	# end
end