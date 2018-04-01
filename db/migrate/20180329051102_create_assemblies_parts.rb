class CreateAssembliesParts < ActiveRecord::Migration[5.0]
  def change
    create_table :assemblies_parts, id: false  do |t|
      t.integer :assembly_id
      t.integer :part_id
    end
  end
end
