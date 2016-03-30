Rails.application.routes.draw do

    root "students#index"

    resources :students do
      resources :brands, :companies, :meetups
    end
    resources :brands
end

# root route
# controller#action
# view
# (link)
#
# page conroller (root "pages#welcome")
