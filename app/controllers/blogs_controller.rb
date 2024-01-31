class BlogsController < ApplicationController
    def index
        @blog = Blog.all
    end
    
    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = blog.New
    end

    def create
        @blog = Blog.new(blog_params) 
        if @blog.save 
            redirect_to blogs_path 
        else 
            render :
    end
    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
