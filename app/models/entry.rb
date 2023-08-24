class Entry < ApplicationRecord
  has_one :recipe

  attr_reader :recipe

  def recipe
    Recipe.find recipe_id if recipe_id.present?
  end

  def self.get_days(number_of_days)
    create_missing_entries(number_of_days)
    where(date: Date.today.iso8601..(Date.today + number_of_days - 1).iso8601).order(:date)
  end

  private
  def self.create_missing_entries(number_of_days)
    number_of_days.times do |i|
      date = (Date.today + i).iso8601
      entries_for_day = where(date: (Date.today + i).iso8601)
      unless entries_for_day.size == 2
        Recipe::MEAL_TYPES.each do |meal_type|
          if entries_for_day.none? { |o| o.meal_type == meal_type.to_s }
            create(date: date, meal_type: meal_type)
          end
        end
      end
    end
  end
end
