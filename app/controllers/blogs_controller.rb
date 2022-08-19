class BlogsController < ApplicationController
    
    def showblog
        b = Blog.all
        k=Array.new
        aname= 0
        for i in b
           aname =Author.find(i.authors_id).Name
           k.push({"author_name":aname ,"Title":i.Title , "Summary":i.Summary })
        end

        # for i in authorID
        #     authorName = Author.find
        # end
        # k={"AuthorName": , "Title":b.Title , "Summary":b.Summary }

        render :json => k
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
