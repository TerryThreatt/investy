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
        - UserController
        - InvesmentController
    - Views
        - User
        - Investment

# Requirements
    [x] Use Sinatra
    [x] Use ActiveRecord
    [x] Include atleast two models: User & Investment models
    [x] Include atleast one has_many relationship: User has_many Investments
    [x] Include atleast one belongs_to relationship: Investment belongs_to User
    [x] Include user account with unique login attribute (username | password)
    [x] Belongs_to resource has full crud routes
    [x] Users can't modify other users content
    [x] User input validations
    [?] Bonus: display validation failures or error messages

# Stretch Goals
[x]- CSS/CSS Framework
[]- Calculation Feature
[x]- Type Feature
[]- Graphs