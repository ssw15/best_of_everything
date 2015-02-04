## Part 2: Authentication and Authorization with Devise

### Setup

 - Get the latest version of best_of_everything (either stash or clone)
 - rake db:drop
 - Add the devise gem, bundle install
 - rails g devise:install
 - Follow the configuration instructions:
  - copy the provided line to development.rb
  - set the root url to dishes#index
 - rails g devise user
 - rake db:migrate
 - rake db:seed
 - rails s
 - Sign in with raghu@example.com / 12341234 (all users have the same password)

### Jobs
 - Update the dummy sign-in / sign-up links in the navbar with real, smart links
 - Ensure that someone is signed in at all times
 - When a favorite is created or updated, ensure that it is associated to the currently signed in user (remove all dropdowns for users)
 - In the FavoritesController, ensure that only owners of favorites can reach the edit, update, and destroy actions
 - On the Favorites#index and Favorites#show views, hide edit and delete buttons unless the current user is the owner of the favorite
 - On the Dishes#show view, display the current user's favorite venue for that dish (if they have added one)
 - On the Dishes#index view, for any dish that the current user has already added a favorite of, show a form to update their existing favorite rather than a new form


