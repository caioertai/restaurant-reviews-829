
<!-- New feature -->
<!-- Users want to see the top restaurants -->
<!--  -->
      GET     /restaurants/:restaurant_id/reviews/new
      POST    /restaurants/:restaurant_id/reviews



      DELETE  /review/:id

<!-- Collection -->
    restaurants  GET     /restaurants           restaurants#index
                 POST    /restaurants           restaurants#create
 new_restaurant  GET     /restaurants/new       restaurants#new

top_restaurants  GET     /restaurants/top       restaurants#top

<!-- Member routes -->
edit_restaurant  GET     /restaurants/:id/edit  restaurants#edit
     restaurant  GET     /restaurants/:id       restaurants#show
                 PATCH   /restaurants/:id       restaurants#update
                 DELETE  /restaurants/:id       restaurants#destroy

 restaurant_chef GET     /restaurants/:id/chef  restaurants#chef
