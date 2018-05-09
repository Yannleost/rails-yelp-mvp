Rails.application.routes.draw do
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create, :index]
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# resources :restaurants

# Rails.application.routes.draw do

#   get "reviews/:id", to: "reviews#show", as: :review

#   resources :restaurants do
#     resources :reviews, only: [:new, :create]
#     collection do
#       get "top", to: "restaurants#top"
#     end

#     member do
#       get "chef", to: "restaurants#chef"
#     end
#   end
#   # GET /restaurants/top
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
