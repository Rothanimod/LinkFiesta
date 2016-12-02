class AddCommentToLink < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :comment, :text
  end
end
