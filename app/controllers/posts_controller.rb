class PostsController < ApplicationController

   before_action :authenticate_user!
   load_and_authorize_resource
   layout "form", only: [:edit, :create, :new]

    def index
      if user_signed_in?
         @posts = Post.all.order(created_at: :desc)
      else
         redirect_to new_user_session_path
      end
   end

   def mine
      @posts = current_user.posts.all
   end
   
   def show
      @post = Post.find_by(id: params[:id])
      if @post.nil?
         @posts = Post.all
         flash.now[:alert] = "Post was not found"
         render "index"
      end
   end
  
   def new
      @post = current_user.posts.new
      @path = user_posts_path(current_user)

   end

   def post_params
      params.require(:post).permit(:content, :user_id, :created_at, :id)
   end

   def create
    
      @post = Post.new(post_params)

      
      if @post.save
         flash[:notice] = 'Post was successfully created.'
         redirect_to user_posts_path(current_user)
      else
         render :action => 'create'
      end
   end
   
   def edit
      @post = Post.find(params[:id])
      @path = user_post_path(current_user, @post)
   
   end
   
   
   def update
      @post = Post.find(params[:id])
      
      #if @post.update_attributes(post_param)
      if @post.update(post_params.as_json)
         #redirect_to :action => 'show', :id => @post
         #flash[:success] = "Post Updated!"
         redirect_to(user_posts_path(current_user ))
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
