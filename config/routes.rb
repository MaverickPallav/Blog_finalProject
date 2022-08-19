Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "newuser", to:"authors#addauthor"

  post "authenticateuser", to:"authors#authenticateuser"

  post "createblog", to:"blogs#addblog"

  put "editblog", to:"blogs#editblog"

  delete "deleteblog", to:"blogs#deleteblog"

  get "allblog", to:"blogs#showblog"
end
