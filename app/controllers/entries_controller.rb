class EntriesController < ApplicationController

  SHOW_DAYS = 7

  def index
    @entries = Entry.get_days(SHOW_DAYS)

    @recipes = Recipe.search(params)
  end

  def edit
    render partial: "recipes/search"
    # @entry = Entry.find(params[:id])
    #
    # @recipes = Recipe.where(category: @entry.meal_type)
  end

  def update
    @entry = Entry.do_update(params[:id], params[:max_out], params[:pat_out], params[:recipe_id])

    redirect_to edit_entry_path
  end

end
