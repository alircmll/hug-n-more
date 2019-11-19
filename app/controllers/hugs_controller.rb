class HugsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
  end
end

#----------Don't forget to permit :photo in hugs_params.
