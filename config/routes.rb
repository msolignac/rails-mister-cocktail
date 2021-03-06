Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:new, :create, :destroy], shallow: true
  end
end
