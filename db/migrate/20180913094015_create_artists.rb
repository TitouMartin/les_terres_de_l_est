class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :localisation
      t.string :description

      t.timestamps
    end
  end
end
