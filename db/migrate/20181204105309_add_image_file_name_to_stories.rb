class AddImageFileNameToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :image_file_name, :string
  end
end
