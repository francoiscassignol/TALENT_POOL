class JobOffer < ApplicationRecord
  belongs_to :user
  has_many :applications
  CATEGORIES = ["Marketing", "Finance", "Executive", "Tech", "HR", "Sales", "Legal"]
  DIVISIONS = ["M. Bricolage", "Intersport"]
  CONTRACT_TYPES = ["Full time", "Part time", "Intern"]
  LOCATIONS = ["Pamiers", "Toulouse Fenouillet", "Montauban", "Castelsarrasin", "Castres", "Bias"]

  def display_start_date
    if start_date
      start_date.strftime("%A, %b %d, %Y")
    else
      "no date"
    end
  end
end
