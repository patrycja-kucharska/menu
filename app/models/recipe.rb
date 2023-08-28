class Recipe < ApplicationRecord

  MEAL_TYPES = [
    :lunch,
    :dinner
  ]

  belongs_to :entry
  has_many :ingredients

  validates :name, presence: true

  def self.search(params={})
    if !params[:name].present?
      self.all
    else
      self.where('name LIKE ?', "%#{params[:name]}%").records
    end
    # sort_column =
    #   params[:sort]
    #     .presence_in(%w{ name tackle_box_items_count }) || "id"

    # sort_direction =
    #   sort_column == "tackle_box_items_count" ? :desc : :asc
  end
end
