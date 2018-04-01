class RenamePhysicisnIdInPhysicians < ActiveRecord::Migration[5.0]
  def change
  rename_column :appointments, :physicisn_id, :physician_id
  end
end
