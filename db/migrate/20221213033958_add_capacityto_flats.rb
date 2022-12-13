class AddCapacitytoFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :capacity, :integer
    remove_column :flats, :beds
    remove_column :flats, :rooms
  end
end
