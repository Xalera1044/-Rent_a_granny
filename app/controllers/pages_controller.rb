class PagesController < ApplicationController
  def home
    @grannies = Granny.all.sample(3)
  end

  def dashboard
    @grannies = current_user.grannies
  end
end
