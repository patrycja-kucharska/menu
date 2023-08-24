class EntriesController < ApplicationController

  SHOW_DAYS = 7

  def index
    @entries = Entry.get_days(SHOW_DAYS)
  end

  def edit
    @entry = Entry.find(params[:id])

    @recipes = Recipe.where(category: @entry.meal_type)
  end

  def update
    @entry = Entry.update(params[:id], { recipe_id: params[:recipe_id], max_out: params[:max_out] == "true", pat_out: params[:pat_out] == "true" }.compact )

    redirect_to edit_entry_path
  end

end
