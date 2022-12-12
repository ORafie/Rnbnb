class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.string :title
      t.text :description
      t.integer :rooms
      t.integer :beds
      t.float :rating
      t.integer :price

      t.timestamps
    end
  end
end
