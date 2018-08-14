class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :job_offers
  ROLES = ["DRH", "Assistant RH", "Direction"]
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true, inclusion: { in: ["DRH","Assistant RH","Direction"] }
  validates :email, uniqueness: true
end

