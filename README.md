# To run
```
bundle install
yarn install
rails db:create db:migrate db:seed
rails s
```

# Routes
```
               Prefix Verb   URI Pattern                                       Controller#Action
   restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
      top_restaurants GET    /restaurants/top(.:format)                        restaurants#top
      chef_restaurant GET    /restaurants/:id/chef(.:format)                   restaurants#chef
          restaurants GET    /restaurants(.:format)                            restaurants#index
                      POST   /restaurants(.:format)                            restaurants#create
       new_restaurant GET    /restaurants/new(.:format)                        restaurants#new
      edit_restaurant GET    /restaurants/:id/edit(.:format)                   restaurants#edit
           restaurant GET    /restaurants/:id(.:format)                        restaurants#show
                      PATCH  /restaurants/:id(.:format)                        restaurants#update
                      PUT    /restaurants/:id(.:format)                        restaurants#update
                      DELETE /restaurants/:id(.:format)                        restaurants#destroy
               review DELETE /reviews/:id(.:format)                            reviews#destroy
```
