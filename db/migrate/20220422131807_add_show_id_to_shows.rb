class AddShowIdToShows < ActiveRecord::Migration[7.0]
  def up
    add_column :shows, :show_id, :string 
  end

  def down
    remove_column :shows, :show_id
  end
end
