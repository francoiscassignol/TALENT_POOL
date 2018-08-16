class JobOffer < ApplicationRecord
  belongs_to :user
  has_many :applications

  CATEGORIES = ["Marketing", "Finance", "Executive", "Tech", "HR", "Sales", "Legal"]
  DIVISIONS = ["M. Bricolage", "Intersport"]
  CONTRACT_TYPES = ["Full time", "Part time", "Intern"]
  LOCATIONS = ["Pamiers", "Toulouse Fenouillet", "Montauban", "Castelsarasin", "Castres", "Bias"]

  multisearchable against: [ :job_title, :job_description ]

  include PgSearch

  pg_search_scope :global_search,
    against: [ :job_title, :job_description, :division, :contract_type, :location],
    associated_against: {
      director: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
