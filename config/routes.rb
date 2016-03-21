Rails.application.routes.draw do

    root "students#index"

    resources :students, :brand_statements, :companies


end
