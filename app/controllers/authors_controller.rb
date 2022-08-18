class AuthorsController < ApplicationController

    def addauthor
        a = params[:author_id]
        b = params[:author_name]
        c = params[:author_email]
        d = params[:author_password]
        e = params[:author_registereddate]
        f = parmas[:author_lastlogindate]
        g = params[:author_bio]

        author = Author.new(author_id:a,author_name:b,author_email:c,author_password:d,author_registereddate:e,author_lastlogindate:f,author_bio:g)
        author.save
        render :json => author
    end
    
    def editauthor
        author = Author.find(params[:author_id])
        a = params[:author_id]
        b = params[:author_name]
        c = params[:author_email]
        d = params[:author_password]
        e = params[:author_registereddate]
        f = parmas[:author_lastlogindate]
        g = params[:author_bio]

        author.update(author_id:a,author_name:b,author_email:c,author_password:d,author_registereddate:e,author_lastlogindate:f,author_bio:g)
        author.save
    end

    def removeauthor  

        author = Author.find(params[:author_id])
        author.destroy
        author.save
        render :json => Author.all
    end

end
