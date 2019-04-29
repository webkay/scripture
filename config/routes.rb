Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :files, only: [:create, :new]
  get '/:id' => "verses#index", as: 'book'
  root "verses#index"
end
