class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :title
      t.integer :distance

      t.timestamps
    end
  end
end
