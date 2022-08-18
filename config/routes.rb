Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "profile", to:"authors#addauthor"

  post "createblog", to:"blogs#addblog"

  put "blog/edit", to:"blogs#editblog"

  put "blog/delete", to:"blogs#deleteblog"
end
