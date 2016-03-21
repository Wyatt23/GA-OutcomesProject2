Rails.application.routes.draw do

    root "students#index"

    resources :students do
      resources :brands
    end 



end
