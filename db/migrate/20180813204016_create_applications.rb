class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :street
      t.string :post_code
      t.string :city
      t.string :country
      t.string :website
      t.string :linkedin
      t.text :cover_letter
      t.string :status, default: "Under review"
      t.string :profile_picture
      t.string :resume
      t.references :job_offer, foreign_key: true

      t.timestamps
    end
  end
end
