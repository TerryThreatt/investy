# App Overview
- User can log investments to keep track of portfolio.
    - Create investments
    - Read list of investments
    - Update investments
    - Delete investments

# Layout
    - Models
        - User
        - Investment
    - Controllers
        - ApplicationController
        - SessionController
        - UserController
        - InvesmentController
    - Views
        - User
        - Investment

# Requirements
    [] Use Sinatra
    [] Use ActiveRecord
    [] Include atleast two models: User & Investment models
    [] Include atleast one has_many relationship: User has_many Investments
    [] Include atleast one belongs_to relationship: Investment belongs_to User
    [] Include user account with unique login attribute (username | password)
    [] Belongs_to resource has full crud routes
    [] Users can't modify other users content
    [] User input validations
    [] Bonus: display validation failures or error messages

# Stretch Goals
- CSS/CSS Framework
- Calculation Feature
- Type Feature
- Graphs