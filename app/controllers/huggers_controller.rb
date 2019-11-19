class HuggersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end
  
  def show
    @hugger = User.find(params[:id])
    @hugs = Hug.where(user_id: params[:id])
  end
end
