class AddCommentToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :comment, :string
  end
end
