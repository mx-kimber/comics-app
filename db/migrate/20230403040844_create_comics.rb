class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :writer
      t.string :illustrator
      t.string :year
      t.string :genre
      t.string :image_url

      t.timestamps
    end
  end
end
