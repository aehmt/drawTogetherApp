class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.text :state
      t.boolean :editable
      t.timestamps
    end
  end
end
