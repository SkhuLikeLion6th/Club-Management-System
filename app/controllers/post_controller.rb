class PostController < ApplicationController
    
    def index
        @users = User.new
        @clubs = Club.all
        @club = ClubMember.find_by_user_id(current_user.id)
        
        @posts = Post.all.order('created_at desc')
        
        @club_check = ClubMember.find_by_user_id(current_user.id)       
        puts @club_id
    end
    
    def new
        
    end
    
    def create
        @club_id = ClubMember.find_by_user_id(current_user.id).club_id
        @posts = Post.new( 
            user_id: current_user.id,
            club_id: @club_id.to_i,
            content: params[:content], 
            title: params[:title] 
            )
            puts #{@club_id}
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
