class PostController < ApplicationController
    
    def index
        @posts = Post.all.order('created_at desc')
        @clubs = Club.all
    end
    
    def new
        
    end
    
    def create
        @club = current_user.club.id
        @posts = Post.new(
            user_id: current_user.id,
            club_id: @club.id,
            content: params[:content], 
            title: params[:title] 
            )
        if @posts.save
            redirect_to '/post/index'
        else
            redirect_to :new
        end
            
        
    end
    
    def update
         @posts = Post.find(params[:id])
         redirect_to root_path if @posts.user.id != current_user.id
         @posts.title = params[:title]
         @posts.content = params[:content]
         if @posts.save
           redirect_to root_path
         else 
           render :edit
         end
    end
    
    def edit
        @posts = Post.find(params[:id])
    end
    
    def destroy
        @posts = Post.find(params[:id])
        @posts.destroy
        redirect_to root_path
    end
end
