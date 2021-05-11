class PostController < ApplicationController

    def list
      @posts = Post.all
   end

   def show
      @post = Post.find(params[:id])
   end
  
   def new
      @post = Post.new
   end

   def post_params
      params.require(:posts).permit(:content, :user_id, :created_at)
   end

   def create
      @post = Post.new(post_params)

      if @post.save
         redirect_to :action => 'list'
      else
         render :action => 'new'
      end
   end
   
   def edit
      @post = Post.find(params[:id])
   end
   
   def post_param
      params.require(:post).permit(:content, :user_id)
   end
   
   def update
      @post = Post.find(params[:id])
      
      if @post.update_attributes(post_param)
         redirect_to :action => 'show', :id => @post
      else
         render :action => 'edit'
      end
   end
   
   def delete
      Post.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
end
