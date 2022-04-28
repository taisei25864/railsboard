Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "subjects#index"
  get "subjects/explain" => "subjects#explain"
  get 'search', to: 'subjects#search'
  resources :subjects do
    resources :answers
    collection do
      get :search
    end
  end
end
