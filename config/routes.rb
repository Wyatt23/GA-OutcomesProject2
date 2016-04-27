Rails.application.routes.draw do

    root "pages#welcome"

    get "pages/about", :as=> 'about_us'
    get "pages/index", :as=> 'table_of_contents'
    get "pages/resources", :as=> 'resources'
    get "pages/assignments", :as=> 'assignments'
    get "pages/schedule", :as=> 'schedule'
    get "pages/policy", :as=> 'policy'

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
