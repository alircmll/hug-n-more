class HuggersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @huggers = User.where(hugger: true)
  end
end

# ------------Don't forget to permit :photo in huggers_params.
