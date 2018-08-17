class Application < ApplicationRecord
  belongs_to :job_offer

  STATUS = ["Under review", "In process", "Rejected", "Accepted"]
  COUNTRY = ["France", "Andorre", "Espagne"]

  #validates
  mount_uploader :profile_picture, PhotoUploader
  mount_uploader :resume, ResumeUploader
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "please type a valid email" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :cover_letter, length: { minimum: 30 }
  validates :phone_number, numericality: { only_integer: true }
  validates :post_code, numericality: { only_integer: true }
end
