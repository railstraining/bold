class RenameAutherIdInAuthors < ActiveRecord::Migration[5.0]
  def change
  	rename_column :books, :auther_id, :author_id
  end
end
