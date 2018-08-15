class Application < ApplicationRecord
  belongs_to :job_offer

  STATUS = ["Under review", "In process", "Rejected", "Accepted"]
  COUNTRY = %w(France Andorre Espagne)

  #validates
  mount_uploader :profile_picture, PhotoUploader
  mount_uploader :resume, ResumeUploader
end
