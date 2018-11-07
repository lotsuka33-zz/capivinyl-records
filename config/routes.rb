Rails.application.routes.draw do
  namespace :profile do
    get 'rentals/index'
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users do
  #   resources :vinyls, only: [:index] do
  #     resources :transactions, only: [:new, :create, :show, :index] do
  #       collection do
  #       # :lent, :borrowed, :pending,                        # collection => no restaurant id in URL
  #         get 'lent', to: "transactions#lent"
  #         get 'borrowed', to: "transactions#borrowed"
  #         get 'pending', to: "transactions#pending"
  #       end
  #     end
  #   end
  # end
  # resources :vinyls, only: [:destroy, :show, :index, :new, :create, :edit, :update] do
  #   resources :transactions, only: [:destroy]
  # end

  resources :vinyls do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, except: [:new, :create]

  namespace :profile do
    resources :rentals, only: :index
  end

end
