Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :jokes

  get '/jokes', to: 'jokes#index'

  get '/jokes/new', to: 'jokes#new'
  
  get '/jokes/:id', to: 'jokes#show', as: :joke

  post '/jokes', to: 'jokes#create'

  get '/jokes/:id/edit', to: 'jokes#edit'

  patch '/jokes/:id', to: 'jokes#update'

  delete 'jokes/:id', to: 'jokes#destroy'
end
