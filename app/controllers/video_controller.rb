class VideoController < ApplicationController
  before_action :authenticate_user!

  
  def index
    @user = User.new
    @videos = Video.all.order('created_at desc')
    
    

  end
  
  def new
  end
  
  def create
    new_video = Video.new(user_id: current_user.id, content: params[:content], title: params[:title] )
    if new_video.save
      redirect_to root_path
    else
      redirect_to new_video_path 
    end
  
 


  end
  
  def edit
    
    @videos = Video.find_by(id: params[:id])
  end
  
  def show
  end
  
  def update
    @videos = Video.find_by(id: params[:id])
    redirect_to root_path if @videos.user.id != current_user.id
    @videos.title = params[:title]
    @videos.content = params[:content]
    if @videos.save
      redirect_to root_path
    else 
      render :edit
    end
  end
  
  def destory
   @videos = Video.find_by(id: params[:id])
   redirect_to root_path if @videos.user.id != current_user.id
   
   @videos.destroy
   redirect_to root_path 
  end
  
end
