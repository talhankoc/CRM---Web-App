



--------------
# Frontend 

------------
### Overview

The frontend of the application follows the generic Ruby on Rails project structure. All HTML files are located in /app/views. Each distinct view has a folder with a name corresponding to the name of the controller for that view. The javascript/coffeescript files associated with each view are located in /app/assets/javascript.

Another general guideline is the structure of the html files within these folders. For any view relating to tables (businesses, communities, investor_prefs, etc), the index.html.erb file contains the table element as well as the search fields. The index.json.jbuilder allows the corresponding controller to pass data to the index html file. The page for adding an entry to these tables is located within the same folder and is called new.html.erb. This isn't a technical rule, but is the recommended structure. So for instance, the page for adding a new community is written in 'app/views/communities/new.html.erb'. Similarly, the show.html.erb file is the page that displays more information about an individual entry in the table. Then, the _form.html.erb file contains the html specifying the input fields to create a new entry. Lastly, edit.html.erb is the page to edit individual entries of the table. 

So in general, each view relating to tables will have the following files:
* index.html.erb
* index.json.jbuilder
* show.html.erb
* new.html.erb
    * _form.html.erb
* edit.html.erb


------------
### Splash Screen and Login


------------
### Home

###### Visual Structure: The outline of the home page consists of a **navbar** on top, and a **container** directly under that encloses all the other componenets.
Within this larger container, there are two columns. One holds the Tables Panel and Links Panel, and the other holds the Tables. On desktop, these columns are separated horizontally. On mobile, the columns stretch out to the width of the screen and become separated vertically.


###### Navbar
The navbar contains the links to the home page, zillow\_prefs page, template\_send page, and user preferences page. It also contains a link to logout.

###### Tables Panel
This is the panel locat

###### Links Panel

###### Tables


------------
<<<<<<< HEAD
###Modal View Pages
=======
### Modal Views
>>>>>>> 251792b28c472f9555594aa953d2e1c72855b457

* 


------------
### Other Pages

###### Zillow Preferences 
The Zillow Preferences page just takes users to the edit zillow\_pref page where they submit their own personal Zillow preferences to the database that way it knows what information to display whenever showing a property.

###### Template Send 
The Template Send page pulls all of the properties and all of the templates from the database and places them in select boxes where the user can select one of each and then hit the send button, which calls a method that fills in the blank terms from the template with information from the address and contact databases and emails it to the homeowner based off the email in the contact.

###### User Preferences

------------
### Others