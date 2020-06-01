Specifications for the Sinatra Assessment
Specs:

 [x]Use Sinatra to build the app
    - Inherited Sinatra in ApplicationController
 [x]Use ActiveRecord for storing information in a database
    - Used ActiveRecord::Base in two models
    - Used ActiveRecord::Migration in db/migrate for working with tables for models
 [x]Include more than one model class (e.g. User, Post, Category)
    - Created User & Investment models
 [x]Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    - User has_many Investments
 [x]Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    - Investment belongs_to User
 [x]Include user accounts with unique login attribute (username or email)
    - Used email uniqueness validation
 [x]Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    - Create crud routes for Investments model
 [x]Ensure that users can't modify content created by other users
    - Used helper methods to authorize users
 [x]Include user input validations
    - Create email and password validation
 []BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 []Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

[x] You have a large number of small Git commits
[x] Your commit messages are meaningful
[x] You made the changes in a commit that relate to the commit message
[x] You don't include changes in a commit that aren't related to the commit message