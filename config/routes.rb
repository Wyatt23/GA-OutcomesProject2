Rails.application.routes.draw do

    root "pages#welcome"

    get "pages/team", :as=> 'team'
    get "pages/resources", :as=> 'resources'
    get "pages/schedule", :as=> 'schedule'
    get "pages/policy", :as=> 'policy'
    get "pages/prework", :as=> 'prework'

    get "assignments/index", :as=> 'assignments_index'
    get "assignments/new", :as=> 'new_assignment'

    resources :students do
      resources :brands, :companies, :meetups
    end
    resources :brands
    resources :pages
    resources :weeks
    resources :assignments
    resources :resources
end

# root route
# controller#action
# view
# (link)
#
# page conroller (root "pages#welcome")
