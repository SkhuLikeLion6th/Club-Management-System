class ClubController < ApplicationController
  def index
    @clubs = Club.all
  end
  
  def new_club
  end
  
  def create_club # 클럽을 만드는 함수.
    if user_signed_in? && current_user.authorization == '0' # 로그인이 되어있고 로그인 권한이 0(사이트관리자)이면 클럽을 만들수 있다.
      @club = Club.new
      @club.id = params[:club_id]
      @club.club_name = params[:club_name]
      @club.introduce = params[:introduce]
      uploader = ImguploaderUploader.new
      uploader.store!(params[:img])
      @club.img_url = uploader.url
      
      @club.save
      
      redirect_to '/club/index'
    else
      redirect_to '/club/index'
    end
  end
  
  def delete_club # 클럽을 지우는 함수
    if user_signed_in? && current_user.authorization == '0' # 로그인이 되어있고 로그인 권한이 0이면 클럽을 지울수 있다.
      @club = Club.find(params[:club_id])
      @club.destroy
      
      redirect_to '/club/index'
    else
      redirect_to '/club/index'
    end
  end
  
  def club_view
    @club = Club.find(params[:club_id])
    @members = ClubMember.all
  end
end
