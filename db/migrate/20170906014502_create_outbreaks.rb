class CreateOutbreaks < ActiveRecord::Migration[5.1]
  def change
    create_table :outbreaks do |t|
      t.string :disease
      t.text :area
      t.float :latitude
      t.float :longitude
      t.float :longitude
      t.boolean :active

      t.timestamps
    end
  end
end
