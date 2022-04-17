Rails.application.routes.draw do
  get '', to: "home#index"

  get 'articles/new', to: "articles#new"
  post 'articles', to: "articles#create"

end
