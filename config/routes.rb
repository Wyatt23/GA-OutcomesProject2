Rails.application.routes.draw do

    root "welcome#index"

    resources :students, :brand_statements, :companies


end
