class HuggersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end
  
  def show
    @hugger = Hugger.find(params[:id])

  end
end
