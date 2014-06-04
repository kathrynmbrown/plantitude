class Api::MealcategoriesController < ApplicationController
  def index
    @mealcategories = Mealcategory.all
    render :json => @mealcategories
  end

  def create
    @mealcategory = Mealcategory.new(mealcategory_params)
    if @mealcategory.save
      render :json => @mealcategory, :status => 201
    else
      render :json => @mealcategory.errors, :status => 422
    end
  end

  def show
    @mealcategory = Mealcategory.find(params[:id])
    render :json => @mealcategory
  end

  def update
    @mealcategory = Mealcategory.find(params[:id])
    if @mealcategory.update(mealcategory_params)
      head :no_content
    else
      render :json => @mealcategory.errors, :status => 422
    end
  end

  def destroy
    @mealcategory = Mealcategory.find(params[:id])
    @mealcategory.destroy
    head :no_content
  end

private
  def mealcategory_params
    params.fetch(:mealcategory).permit(:id, :name)
  end
end
