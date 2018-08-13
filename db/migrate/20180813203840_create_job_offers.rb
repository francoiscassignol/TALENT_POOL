class CreateJobOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_offers do |t|
      t.string :job_title
      t.string :division
      t.date :start_date
      t.string :location
      t.string :contract_type
      t.text :division_description
      t.text :job_description
      t.text :expected_profile
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
