class JobOffer < ApplicationRecord
  belongs_to :user
  has_many :applications
  CATEGORIES = ["Marketing", "Finance", "Executive", "Tech", "HR", "Sales", "Legal"]
  DIVISIONS = ["M. Bricolage", "Intersport"]
  CONTRACT_TYPES = ["Full time", "Part time", "Intern"]
  LOCATIONS = ["Pamiers", "Toulouse Fenouillet", "Montauban", "Castelsarasin", "Castres", "Bias"]
end
