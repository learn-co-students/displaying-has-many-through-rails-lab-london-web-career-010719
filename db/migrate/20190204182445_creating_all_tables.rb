class CreatingAllTables < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
    end

    create_table :doctors do |t|
      t.string :name
    end

    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.string :name
    end
  end
end
