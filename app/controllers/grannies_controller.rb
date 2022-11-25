class GranniesController < ApplicationController
  def index
    @grannies = Granny.all
  end

  def show
    @granny = Granny.find(params[:id])
  end

  def new
    @granny = Granny.new
  end

  def create
    @granny = Granny.new(granny_params)
    @granny.user = current_user
    if @granny.save
      redirect_to grannies_path
    else
      render :new_granny, status: :unprocessable_entity
    end
  end

  private
  
  def granny_params
    params.require(:granny).permit(:first_name, :last_name, :age, :description, :lullaby_skill, :storytelling_skill, :baking_skill, :availability, :price_per_day, :image_url)
  end
end
