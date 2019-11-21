class HuggersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @huggers = User.where(hugger: true)
  end

  def show
    @hugger = User.find(params[:id]) 
    @hugs = Hug.where(user_id: params[:id])  
  end
end

# ------------Don't forget to permit :photo in huggers_params.
