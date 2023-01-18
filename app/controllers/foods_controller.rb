class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  
  def index
    @foods = Food.all
  end

  def show
    # @food = Food.find(params[:id])
  end

  def new
    @food = Food.new()
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @food = Food.find(params[:id])
  end

  def update
    # @food = Food.find(params[:id])

    if @food.update(food_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    # @food = Food.find(params[:id])
    @food.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:food, :rating)
  end
end
