# Xing interview test

## WIP- rspec and capybara tests ###

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
new item
edit item
show item
show all items
destroy item

#### Notes
Tried to use native capybara functions but couldn’t click the buttons
