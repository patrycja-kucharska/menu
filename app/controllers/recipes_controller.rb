class RecipesController < ApplicationController

  def index
    @recipes = Recipe.search(params)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end
end
