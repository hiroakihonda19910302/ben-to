Rails.application.routes.draw do
  #会員サイト
  devise_for :users, controllers: {
    registrations: 'publics/registrations',
    passwords: 'publics/passwords',
    sessions: 'publics/sessions'
  }

  scope module: :publics do
    get 'top' => 'homes#top'
    get 'about' => 'homes#about'
    root 'homes#top'

    resources :posts do
      collection do
        get :ranking
        get :search
      end

      resources :reviews, only: [:create, :index, :destroy]
      resource :goods, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end

    get 'users/my_page' => 'users#show', as: 'users'
    get 'users/edit_page' => 'users#edit', as: 'edit_users'
    patch 'users/edit_page/:id' => 'users#update', as: 'update_users'
    get 'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'
  end

  #管理者サイト
  devise_scope :admins do
    devise_for :admins, controllers: {
      registrations: 'admins/registrations',
      passwords: 'admins/passwords',
      sessions: 'admins/sessions'
    }
  end

  namespace :admins do
    get 'top' => 'homes#top'

    resources :posts, only: [:index, :show, :destroy] do
      collection do
        get :ranking
      end
      resources :reviews, only: [:destroy]
    end

    resources :genres, only: [:index, :create, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
