Rails.application.routes.draw do
  get 'message/index'
  get 'message/show'
  get 'message/edit'
  get 'message/new'

  get "/messages", to: "message#index"
  get "/thanks", to: "message#thank_you_page"
  post "/messages", to: "message#create"

  get "/about", to: "pages#about", as: "about"
  get "/portfolio", to: "pages#portfolio", as: "portfolio"
  get "/contact", to: "message#index", as: "contact"
  get "/blog", to: "pages#blog", as: "blog"

  get "/", to: "pages#home", as:"root"
  
end
