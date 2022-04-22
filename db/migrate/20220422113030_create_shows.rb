class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :show_type, null: false
      t.string :title, null: false
      t.string :director
      t.text :cast
      t.string :country
      t.date :date_added
      t.integer :release_year, null: false
      t.string :rating
      t.string :duration
      t.text :listed_in
      t.text :description

      t.timestamps
    end
  end
end
