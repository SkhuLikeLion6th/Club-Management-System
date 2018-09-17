class RegistrationsController < Devise::RegistrationsController

  protected

  def update_resource(resource, params)
    resource.update_without_password(account_update_params)
  end
  
  
  private


  def account_update_params
    params.require(:user).permit(:department_id, :name, :phone_number, :mail, :grade_id, :password, :password_confirmation, :email)
  end
  
  
end