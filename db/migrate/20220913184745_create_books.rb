class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :isbn
      t.string :description
      t.string :published_date
      t.string :thumbnail

      t.timestamps
    end
  end
end
