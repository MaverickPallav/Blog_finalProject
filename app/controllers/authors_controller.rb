class AuthorsController < ApplicationController

    def authorinfo
        authorname = params[:username]
        authorfind = Author.where(name:authorname)
        blogfind = Blog.where(authors_id: authorfind.id)
        render :json => blog

    end

    def allauthor
        render :json => Author.all
    end

    def authenticateuser
        a = params[:Email]
        b = params[:Password]

        authorfind = Author.find_by(Email: a,Password: b)
        if (authorfind)
            render :json => authorfind
        else
            
        end
    end

    def addauthor
        # a = params[:author_id]
        b = params[:Name]
        c = params[:Email]
        d = params[:Password]
        # e = params[:author_registereddate]
        # f = parmas[:author_lastlogindate]
        g = params[:Bio]

        authorfind = Author.find_by(Email: c,Password: d)

        if (!authorfind)
        author = Author.new(Name:b,Email:c,Password:d,Bio:g)
        author.save
        render :json => author
        else
            
        end

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
        a = params[:id]
        author = Author.find(a)
        author.destroy
        author.save
        render :json => Author.all
    end

end
