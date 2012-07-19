class RemoveColumnFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :moderated
  end
end
