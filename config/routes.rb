Rails.application.routes.draw do

    root "pages#welcome"

    get "pages/team", :as=> 'team'
    get "pages/index", :as=> 'table_of_contents'
    get "pages/resources", :as=> 'resources'
    get "pages/assignments", :as=> 'assignments'
    get "pages/schedule", :as=> 'schedule'
    get "pages/policy", :as=> 'policy'
    get "pages/prework", :as=> 'prework'

    get "assignments/index", :as=> 'assignments_index'

    resources :students do
      resources :brands, :companies, :meetups
    end
    resources :brands
    resources :pages
    resources :assignments
end

# root route
# controller#action
# view
# (link)
#
# page conroller (root "pages#welcome")
