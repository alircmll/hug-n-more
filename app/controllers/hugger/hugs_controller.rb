class Hugger::HugsController < ApplicationController
  before_action :find_hug, only: [ :show, :edit, :update, :destroy ]

  def index
    @hugs = current_user.hugs
  end

  def show    
  end

  def new
    @hug = Hug.new
  end

  def create
    @hug = Hug.new(hug_params)
    @hug.user = current_user
    if @hug.save
      redirect_to hug_path(@hug)
    else
      render :new
    end
  end

  def edit
  end

  def update    
    @hug.update(hug_params)
    redirect_to hugger_hug_path(@hug), notice: 'Your hug was successfully updated.'
  end

  def destroy    
    @hug.destroy
    redirect_to hugger_hugs_path
  end

  private

  def hug_params
    params.require(:hug).permit(:description, :photo, :category, :title, :price)
  end

  def find_hug 
    @hug = Hug.find(params[:id])    
    unless @hug.user == current_user
      redirect_to hugger_hugs_path, notice: 'It\'s not your hug !'
    end
  end
end
