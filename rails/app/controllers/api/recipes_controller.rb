class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :json => @recipes
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render :json => @recipe, :status => 201
    else
      render :json => @recipe.errors, :status => 422
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :json => @recipe
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      head :no_content
    else
      render :json => @recipe.errors, :status => 422
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    head :no_content
  end

private
  def recipe_params
    params.fetch(:recipe).permit(:id, :name, :directions, :servings, :cooking_time, :total_calories, :category)
  end
end
