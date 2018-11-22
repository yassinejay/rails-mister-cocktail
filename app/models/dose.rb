class Dose < ApplicationRecord
	belongs_to :cocktail
	belongs_to :ingredient

	validates_associated :cocktail
	validates_associated :ingredient
	validates :description, presence: true
	validates :cocktail_id, uniqueness: {scope: :ingredient_id}
end
