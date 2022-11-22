class PagesController < ApplicationController
  def home
    @grannies = Granny.all.sample(3)
  end
end
