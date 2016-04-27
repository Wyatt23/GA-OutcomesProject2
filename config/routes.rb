Rails.application.routes.draw do

    root "pages#welcome"

    resources :students do
      resources :brands, :companies, :meetups
    end
    resources :brands
    resources :pages
end

# root route
# controller#action
# view
# (link)
#
# page conroller (root "pages#welcome")
