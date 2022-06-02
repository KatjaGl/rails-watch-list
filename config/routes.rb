Rails.application.routes.draw do
  resources :movies
  #   resources :bookmarks, only: [ :new, :create, :destroy ]
  # end
  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
