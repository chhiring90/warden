Rails.application.routes.draw do
  devise_for :users, path: 'auth', format: false, controllers: {
    sessions: 'auth/sessions',
    # registrations: 'auth/registrations'
  }

  as :user do
    post 'login', to: 'devise/sessions#new'
    post 'signup', to: 'auth/registrations#create'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
