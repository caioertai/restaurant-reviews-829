Rails.application.routes.draw do
  # /restaurants/...
  resources :restaurants do
    resources :reviews, only: [:new, :create] # ../:id/reviews/news

    # .../top
    get "top", on: :collection, as: :top

    # .../:id/chef
    get "chef", on: :member, as: :chef
  end

  # /reviews/...
  resources :reviews, only: [:destroy]
end
