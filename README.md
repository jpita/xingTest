# Rails interview test

## WIP- rspec and capybara tests ###
* Done:
	* Capybara (automatic functional tests)
		* Create item
		* Delete item
	* Rspec (unit tests)
		* Create item 

### Random findings
- after destroying the first item, (http://localhost:3000/items/1) goes to error page, should have a redirection to “items” page or have a nice “item not found” page
- after destroying the only item, next item created has index 2 instead of 1, is this expected?
- it’s possible to create items without “name” or “description”, is this expected?
- I am on the “/items” page,if I destroy one item, then go back using the back browser button, I am able to destroy the previously destroyed item, this goes to the error page
* SQL Injection protected? Seems like it. 
	* (http://gwae.trollab.org/sqlite-injection.html)
	* (http://atta.cked.me/home/sqlite3injectioncheatsheet)
	* (http://www.tutorialspoint.com/sqlite/sqlite_injection.htm)
	* (http://rails-sqli.org/)

### Test cases
* new item
* edit item
* show item
* show all items
* destroy item

#### Notes
* Tried to use native capybara functions but couldn’t click the buttons, resorted to selenium webdriver functions

#### Main issues
* A lot of time lost to setup the environment
	* First on my old windows machine, somethins don't work on windows
	* Then on an Ubuntu VM, everything was super slow
	* Then installed Ubuntu on the PC, ran into some issues with network drivers
	* Finally was able to make it work
* Due to lack of knowledge of a Rails application, Ruby itself and zero knowledge of Rspec, was hard to start having results
* Due to zero knowledge of Capybara, was really hard to start having results, specially with headless drivers (didn't know where the application instance was running to check the current status)
