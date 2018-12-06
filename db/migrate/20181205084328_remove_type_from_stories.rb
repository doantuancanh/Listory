class RemoveTypeFromStories < ActiveRecord::Migration[5.2]
  def change
    remove_column :stories, :type, :string
  end
end
