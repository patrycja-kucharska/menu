class EntriesController < ApplicationController

  SHOW_DAYS = 7

  def index
    @entries = Entry.get_days(SHOW_DAYS)

    @recipes = Recipe.search(params)
  end

  def update_presence
    @entry = Entry.update_presence(entry_params)

    render json: { message: "Success" }
  end

  def update_recipe
    @entry = Entry.update_recipe(entry_params)

    render json: { message: "Success" }
  end

  private
  def entry_params
    params.permit(:entry_id, :max_out, :pat_out, :recipe_id)
  end

end
