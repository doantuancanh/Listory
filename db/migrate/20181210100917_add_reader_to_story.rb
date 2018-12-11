class AddReaderToStory < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :reader, :integer
  end
end
