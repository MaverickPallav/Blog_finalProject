class BlogsController < ApplicationController
    
    def showblog
        b = Blog.all
        k=Array.new
        aname= 0
        for i in b
           aname =Author.find(i.authors_id).Name
           k.push({"author_name":aname ,"Title":i.Title , "Summary":i.Summary , "Image":i.Image, "Description":i.Description, "Blog_id":i.id})
        end

        # for i in authorID
        #     authorName = Author.find
        # end
        # k={"AuthorName": , "Title":b.Title , "Summary":b.Summary }

        render :json => k
    end

    def showuserblog
        a = params[:authors_id]
        b = Blog.where(authors_id: a)
        render :json => b
    end

    def addblog
        a = params[:authors_id]
        b = params[:Title]
        c = params[:Summary]
        d = params[:Description]
        e = params[:Image]

        blogfind = Blog.find_by(Title: b)

        if(!blogfind)
        blog = Blog.new("authors_id": a ,"Title":b,"Summary":c , "Image":e ,"Description":d)
        blog.save
        render :json => blog
        else

        end
    end

    def deleteblog  
        a = params[:id]
        blog = Blog.find(a)
        blog.destroy
        blog.save
        render :json => Blog.all
    end

    def showthisblog
        a = params[:id]
        blog = Blog.find(a)
        render :json => blog
    end

    def editblog   
        x = params[:id]
        a = params[:Title] #inside bracket name should match with Postman
        b = params[:Description]
        c = params[:Summary]
        d = params[:Image]

        blog = Blog.find(x)
        blog.update(Title:a,Description:b,Summary:c,Image:d) #Inside name should match with Database
        blog.save
        render :json =>blog
    end
end
