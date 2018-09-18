class ApplyFormController < ApplicationController
  def index
    @forms = ApplyForm.all
  end

  def new
  end

  def create
    # 로그인이 되어있고 동아리 관리자일 때만 지원양식 생성가능
    if user_signed_in? && current_user.authorization=='1'
      @form = ApplyForm.new
      user = ClubMember.find(params[:user_id])
      @form.club_id = user.club_id
      @form.title1 = params[:title1]
      @form.title2 = params[:title2]
      @form.title3 = params[:title3]
      @form.title4 = params[:title4]
      @form.title5 = params[:title5]
      @form.save
    end
    redirect_to '/apply_form/index'
  end
  
  def edit
    @form = ApplyForm.find(params[:club_id])
  end
  
  def update
    # 로그인이 되어있고 동아리 관리자일 때만 지원양식 수정가능
    if user_signed_in? && current_user.authorization=='1'
      @form = ApplyForm.find(params[:club_id])
      @form.club_id = params[:club_id]
      @form.title1 = params[:title1]
      @form.title2 = params[:title2]
      @form.title3 = params[:title3]
      @form.title4 = params[:title4]
      @form.title5 = params[:title5]
      @form.save
    end
    redirect_to '/apply_form/index'
  end
  
end
