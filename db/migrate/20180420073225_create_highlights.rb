class CreateHighlights < ActiveRecord::Migration[5.1]
  def change
    create_table :highlights do |t|
      t.string :clip
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
