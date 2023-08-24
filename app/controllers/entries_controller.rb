class EntriesController < ApplicationController

  before_action :create_missing_entries, only: [ :index ]

  SHOW_DAYS = 7

  def index
    @entries = Entry.where(date: Date.today.iso8601..(Date.today + SHOW_DAYS).iso8601).order(:date)
  end

  def edit
    @entry = Entry.find(params[:id])

    @recipes = Recipe.where(category: @entry.meal_type)
  end

  def update
    @entry = Entry.update(params[:id], { recipe_id: params[:recipe_id], max_out: params[:max_out] == "true", pat_out: params[:pat_out] == "true" }.compact )

    redirect_to edit_entry_path
  end

  private

  def create_missing_entries
    SHOW_DAYS.times do |i|
      date = (Date.today + i).iso8601
      entries_for_day = Entry.where(date: (Date.today + i).iso8601)
      unless entries_for_day.size == 2
        Recipe::MEAL_TYPES.each do |meal_type|
          if entries_for_day.none? { |o| o.meal_type == meal_type.to_s }
            Entry.create(date: date, meal_type: meal_type)
          end
        end
      end
    end
  end
end
