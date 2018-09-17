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
  
  def edit_club # 클럽을 불러오는 함수
    if user_signed_in? && (current_user.authorization == '0' || current_user.authorization == '1') # 로그인이 되어있고 로그인 권한이 0, 1이면 클럽을 수정할수 있다.
      @club = Club.find(params[:club_id])
      if @club.user.id != ClubMember.find_by_user_id
    else
      redirect_to '/club/index'
    end
  end
  
  def delete_club_member # 클럽 멤버를 지우는 함수
    if user_signed_in?
      @member = ClubMember.find(params[:club_member_id])
      # 현재 로그인 한 유저가 서버관리자 이거나 지우는 유저의 클럽아이디가 로그인하고 있는 클럽아이디가 같고 단체 관리자이면 멤버를 삭제할수있다.
      if current_user.authorization == '0' || (ClubMember.find_by_club_id(@member) == ClubMember.find_by_club_id(current_user.id) && current_user.authorization == '1')
        @member.destroy
        
        redirect_to '/club/club_members'
      else
        redirect_to '/club/index'
      end
    end
  end
  
  def club_view
    @club = Club.find(params[:club_id]) 
    @members = ClubMember.all # 클럽 멤버들을 모두 불러옴
    
    # 현재 로그인 한 유저가 현재 보고있는 클럽에 속해있는지 확인하는 함수
    if user_signed_in? && current_user.authorization != '0'
      @current_check_club = ClubMember.find_by_user_id(current_user.id) && ClubMember.find_by_club_id(@club)
    end
  end
  
  def club_members
    if user_signed_in? && current_user.authorization == '0'
      @members = ClubMember.all
    else
      redirect_to '/club_index'
    end
  end
end
