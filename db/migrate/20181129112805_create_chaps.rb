class CreateChaps < ActiveRecord::Migration[5.2]
  def change
    create_table :chaps do |t|
      t.string :name
      t.text :content
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
