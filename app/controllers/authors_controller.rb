class AuthorsController < ApplicationController

    def authorinfo
        authorname = params[:username]
        authorfind = Author.where(name:authorname)
        blogfind = Blog.where(authors_id: authorfind.id)
        render :json => blog

    end

    def authenticateuser
        
    end

    def addauthor
        # a = params[:author_id]
        b = params[:Name]
        c = params[:Email]
        d = params[:Password]
        # e = params[:author_registereddate]
        # f = parmas[:author_lastlogindate]
        g = params[:Bio]

        author = Author.new(Name:b,Email:c,Password:d,Bio:g)
        author.save
        render :json => author
    end
    
    def editauthor
        author = Author.find(params[:author_id])
        a = params[:id]
        b = params[:Name]
        c = params[:Email]
        d = params[:Password]
        # e = params[:author_registereddate]
        # f = parmas[:author_lastlogindate]
        g = params[:Bio]

        author.update(id:a,Name:b,Email:c,Password:d,Bio:g)
        author.save
    end

    def removeauthor  

        author = Author.find(params[:author_id])
        author.destroy
        author.save
        render :json => Author.all
    end

end
