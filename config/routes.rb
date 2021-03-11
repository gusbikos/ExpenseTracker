Rails.application.routes.draw do

 
  resources :stocks do
    collection do
      get :search
    end
  end

  get "/login", to: "users#login", as: "login"
  post "/handle_login", to: 'users#handle_login'
  delete "/logout", to: "users#logout"
  
  resources :transactions
  resources :expenses
  resources :incomes
  resources :bank_accounts
  resources :users

  root to: "application#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
