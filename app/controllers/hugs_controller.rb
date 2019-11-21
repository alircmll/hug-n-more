class HugsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:s].present? 
      @hugs = search(params[:s])
    else
      @hugs = Hug.all
    end
  end

  def show
    @hug = Hug.find(params[:id])
    @hugger = @hug.user
  end

private

def search(querySearch)
  hugs = [] 
  Hug.algolia_search(querySearch).each do |hug|
    hugs << hug
  end
  
  users = User.algolia_search(querySearch)
  users.each do |user|
    user.hugs.each do  |hug|
      hugs << hug
    end
  end

  return hugs
end

end

#----------Don't forget to permit :photo in hugs_params.
 