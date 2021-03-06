class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :names
      t.string :identification_number
      t.string :gender
      t.string :address
      t.string :town
      t.string :location
      t.string :phone
      t.string :country
      t.string :occupation
      t.string :civil_status
      t.date :date_of_birth
      t.references :health_facility

      t.timestamps
    end
    add_index :patients, :health_facility_id
  end
end
