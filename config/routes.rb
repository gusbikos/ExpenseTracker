Rails.application.routes.draw do
  resources :transactions
  resources :portfolios
  resources :expenses
  resources :incomes
  resources :bank_accounts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
