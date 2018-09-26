class VideoController < ApplicationController
  before_action :authenticate_user!

  
  def index
    @user = User.new
    @club = Club.new
    @videos = Video.all.order('created_at desc')
 
    

  end
  
  
  def destroy
    @videos = Video.find(params[:id])
    @videos.destroy
    redirect_to root_path
  end
  
  
  
  
  def new
  end
  
  def create
    @videos = Video.new(user_id: current_user.id, content: params[:content], title: params[:title] )
    if @videos.save
      redirect_to root_path
    else
      redirect_to new_video_path 
    end
  
  end
  
  def edit
    
    @videos = Video.find(params[:id])
  end
  
  def show
  end
  
  def update
    @videos = Video.find(params[:id])
    redirect_to root_path if @videos.user.id != current_user.id
    @videos.title = params[:title]
    @videos.content = params[:content]
    if @videos.save
      redirect_to root_path
    else 
      render :edit
    end
  end
  

  
  def video_list
    
  end
end
