class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  end

  def create 
    @blog = Blog.create(params[:blog])
    @blog.save
    redirect_to blogs_path
  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def show
  	@blog = Blog.find(params[:id])
  end

  def update
  	@blog = Blog.find(params[:id])
  	@blog.update_attributes(params[:blog])
  	if @blog.save
  	  redirect_to @blog
  	else
  		render :action => edit
  	end
  end

  def destroy
  end
end
