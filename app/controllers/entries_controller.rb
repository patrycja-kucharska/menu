class EntriesController < ApplicationController

  SHOW_DAYS = 7

  def index
    @entries = Entry.get_days(SHOW_DAYS)

    @recipes = Recipe.search(params)
  end

  # def update
  #   @entry = Entry.do_update(params[:id], params[:max_out], params[:pat_out], params[:recipe_id])
  #
  #   render :partial => "entries/person_out_badge", locals: { entry: @entry }
  # end

  def update_presence
    @entry = Entry.do_update(entry_params)

    render :partial => "entries/person_out_badge", locals: { entry: @entry }
  end

  private

  def entry_params
    params.permit(:entry_id, :max_out, :pat_out, :recipe_id)
  end

end
