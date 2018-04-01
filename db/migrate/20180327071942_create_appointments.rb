class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.integer :physicisn_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
