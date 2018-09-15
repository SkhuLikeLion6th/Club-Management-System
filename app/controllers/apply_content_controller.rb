class ApplyContentController < ApplicationController
  def new
    @apply_form = ApplyForm.find_by(:club_id => params[:club_id])
  end
  
  def create
    @apply_content = ApplyContent.new
    @apply_content.apply_form_id = @apply_form #흐음.....
    @apply_content.user_id = params[:user_id]
    @apply_content.content1 = params[:content1]
    @apply_content.content2 = params[:content2]
    @apply_content.content3 = params[:content3]
    @apply_content.content4 = params[:content4]
    @apply_content.content5 = params[:content5]
    @apply_content.save
    
    redirect_to '/'
  end
end
