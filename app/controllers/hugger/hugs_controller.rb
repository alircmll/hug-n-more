class Hugger::HugsController < ApplicationController

  def index
    @hugs = current_user.hugs
  end

  def show
    @hug = Hug.find(params[:id])
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
    @hug = Hug.find(params[:id])
  end

  def update
    @hug = Hug.find(params[:id])
    @hug.update(hug_params)
    redirect_to hugger_hugs_path(@hug), notice: 'Your hug was successfully updated.'
  end

  def destroy
    @hug = Hug.find(params[:id])
    @hug.destroy
    redirect_to root_path
  end

  private

  def hug_params
    params.require(:hug).permit(:description, :photo, :category, :title, :price)
  end
end
