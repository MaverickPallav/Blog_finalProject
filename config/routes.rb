Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "profile", to:"authors#addauthor"

  post "createblog", to:"blogs#addblog"

  put "editblog", to:"blogs#editblog"

  delete "deleteblog", to:"blogs#deleteblog"
end
