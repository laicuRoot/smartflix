class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.integer :show_type, default: 0
      t.string :show_id
      t.string :title
      t.string :director
      t.text :cast
      t.string :country
      t.date :date_added
      t.integer :release_year
      t.string :rating
      t.string :duration
      t.text :listed_in
      t.text :description

      t.timestamps
    end
  end
end
