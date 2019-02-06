class RenamePatientIdinAppointmentstoPaitentId < ActiveRecord::Migration
  def change
    rename_column :appointments, :patient_id, :paitent_id
  end
end
