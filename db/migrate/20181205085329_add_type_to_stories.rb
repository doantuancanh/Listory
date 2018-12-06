class AddTypeToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :type, :string
  end
end
