Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tops/index' => 'tops#index'
  root 'tops#index'
  get 'tops/new' => 'tops#new'
  post 'tops' => 'tops#create'
  get 'tops/:id' => 'tops#show',as: 'top'
  get 'practices/index' => 'practices#index'
  get 'practices/new' => 'practices#new'
  post 'practices' => 'practices#create'
  delete 'practices/:id' => 'practices#destroy'
  get 'practices/:id' => 'practices#show',as: 'practice'
  get 'results/index' => 'results#index'
  get 'fee_admin/index' => 'fee_admin#index'
  get 'reservations/index' => 'reservations#index'
  get 'informations/index' => 'informations#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
