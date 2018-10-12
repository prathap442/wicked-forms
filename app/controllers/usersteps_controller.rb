class UserstepsController < ApplicationController
  include Wicked::Wizard
  steps :personal,:social,:successful
  def show
    binding.pry
    session[:user_id] = params[:user].to_i  if params[:user]
    @user = User.find(session[:user_id])
    render_wizard
  end

  def update
    @user = User.find(session[:user_id])
    binding.pry
    @user.attributes = usersteps_params
    render_wizard @user
  end

  def finish_wizard_path
    user_path(current_user)
  end
  private
  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Thanks for signing up."
  end
  def usersteps_params
    params[:user].permit(:company_name,:website,:company_email,:name_on_card,:card_number,:expiration)
  end
end