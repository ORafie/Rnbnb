class RemoveTypeFromFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :type
    add_column :flats, :flat_type, :string
  end
end
