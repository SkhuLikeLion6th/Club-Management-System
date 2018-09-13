class ApplyContentController < ApplicationController
  def new
  end
  
  def create
    @content = ApplyContent.new
    @content.apply_form_id = ApplyForm.find(params[:club_id])
    @content.user_id = params[:user_id]
    @content.content1 = params[:content1]
    @content.content2 = params[:content2]
    @content.content3 = params[:content3]
    @content.content4 = params[:content4]
    @content.content5 = params[:content5]
    @content.save
    
    redirect_to '/apply_form/index'
  end
end
