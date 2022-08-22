class AuthorsController < ApplicationController

    def authorinfo
        a = params[:id]
        authorfind = Author.find(a)
        render :json => authorfind

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
        
        a = params[:id]
        b = params[:Name]
        c = params[:Email]
        d = params[:Password]
        # e = params[:author_registereddate]
        # f = parmas[:author_lastlogindate]
        g = params[:Bio]
        author = Author.find(a) 
        author.update(Name:b,Email:c,Password:d,Bio:g)
        author.save
        render :json => author
    end

    def removeauthor  
        a = params[:id]
        author = Author.find(a)
        author.destroy
        author.save
        render :json => Author.all
    end

end
