class ClubController < ApplicationController
  def index
    @clubs = Club.all
  end
  
  def new_club
  end
  
  def create_club
    @club = Club.new
    @club.id = params[:club_id]
    @club.club_name = params[:club_name]
    @club.introduce = params[:introduce]
    uploader = ImguploaderUploader.new
    uploader.store!(params[:img])
    @club.img_url = uploader.url
    
    @club.save
    
    redirect_to '/club/index'
  end
  
  def delete_club
    @club = Club.find(params[:club_id])
    @club.destroy
    
    redirect_to '/club/index'
  end
  
  def club_view
    @club = Club.find(params[:club_id])
  end
  
  def club_members_view
    @members = ClubMember.all
  end
end
