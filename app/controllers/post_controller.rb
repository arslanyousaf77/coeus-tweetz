class PostController < ApplicationController

    def index
      @posts = Post.all
   end

   # def mine
   #    @user = User.find(params[:user_id])
   #    @posts = @user.posts.all
   # end
   
   def show
      @post = Post.find_by(id: params[:id])
      if @post.nil?
         @posts = Post.all
         flash.now[:alert] = "Post was not found"
         render "index"
      end
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
         render :action => 'create'
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
         #redirect_to :action => 'show', :id => @post
         redirect_to(@post)
      else
         #render :action => 'edit'
         render "edit"
      end
   end
   
   def destroy
      Post.find(params[:id]).destroy
      redirect_to :action => 'index'
   end
   
end
