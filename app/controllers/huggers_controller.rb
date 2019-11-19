class HuggersController < ApplicationController
  def index
  end
  
  def show
    @hugger = Hugger.find(params[:id])
  end
end
