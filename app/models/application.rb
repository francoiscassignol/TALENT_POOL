class Application < ApplicationRecord
  belongs_to :job_offer

  STATUS = ["Under review", "In process", "Rejected", "Accepted"]
  COUNTRY = %w(France Andorre Espagne)
end
