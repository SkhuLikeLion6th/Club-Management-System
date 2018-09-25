class ApplyContentController < ApplicationController
  def index
    @forms = ApplyForm.all.reverse
    @apply_contents= ApplyContent.all
  end
  def new
    @apply_form = ApplyForm.find_by(:club_id => params[:club_id])
  end
  
  def create
    if user_signed_in?
      @apply_content = ApplyContent.new
      @apply_content.apply_form_id = params[:apply_form_id]
      @apply_content.user_id = params[:user_id]
      @apply_content.content1 = params[:content1]
      @apply_content.content2 = params[:content2]
      @apply_content.content3 = params[:content3]
      @apply_content.content4 = params[:content4]
      @apply_content.content5 = params[:content5]
      @apply_content.save
    end
    redirect_to '/apply_content/index'
  end
  
  def edit
    @forms = ApplyForm.all
    @apply_content = ApplyContent.find(params[:apply_content_id])
  end
  
  def update
    if user_signed_in?
      @apply_content = ApplyContent.find(params[:apply_content_id])
      @apply_content.content1 = params[:content1]
      @apply_content.content2 = params[:content2]
      @apply_content.content3 = params[:content3]
      @apply_content.content4 = params[:content4]
      @apply_content.content5 = params[:content5]
      @apply_content.save
    end
    redirect_to '/apply_content/index'
  end
  
  def destroy
    if user_signed_in?
      @apply_content = ApplyContent.find_by_user_id(params[:user_id])
      @apply_content.destroy
    end
    
    redirect_to '/apply_content/index'
  end
end
