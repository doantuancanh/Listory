class AddPaperclipToStory < ActiveRecord::Migration[5.2]
  def up
    add_attachment :stories, :image
  end

  def down
    remove_attachment :stories, :image
  end
end
