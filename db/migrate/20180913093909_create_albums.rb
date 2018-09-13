class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :cover
      t.integer :format_price_vinyl
      t.integer :format_price_digital
      t.integer :stock
      t.string :description

      t.timestamps
    end
  end
end
