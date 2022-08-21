Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "newuser", to:"authors#addauthor"

  post "authenticateuser", to:"authors#authenticateuser"

  post "createblog", to:"blogs#addblog"

  post "editblog", to:"blogs#editblog"

  post "deleteblog", to:"blogs#deleteblog"

  get "allblog", to:"blogs#showblog"

  post "showuserblog", to:"blogs#showuserblog"

  post "showthisblog", to: "blogs#showthisblog"
end
