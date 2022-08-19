class BlogsController < ApplicationController
    
    def showblog
        render :json => Blog.all
    end

    def addblog
        a = params[:authors_id]
        b = params[:Title]
        c = params[:Summary]
        # d = params[:blog_publisheddate]
        # e = params[:blog_image]

        blog = Blog.new("authors_id": a ,"Title":b,"Summary":c)
        blog.save
        render :json => blog
    end

    def removeblog  

        blog = Blog.find(params[:author_id])
        blog.destroy
        blog.save
        render :json => Blog.all
    end

    def editblog   
        blog = Blog.find(params[:id])
        a = params[:blog_title] #inside bracket name should match with Postman
        b = params[:blog_title]
        c = params[:blog_publisheddate]
        d = params[:blog_image]

        blog.update(blog_title:a,blog_summary:b,blog_publisheddate:c,blog_image:d) #Inside name should match with Database
        blog.save
    end
end
