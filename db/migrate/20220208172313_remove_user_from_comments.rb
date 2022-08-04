class RemoveUserFromComments < ActiveRecord::Migration[6.1]
  def change
     remove_reference :comments, :user, index: true, foreign_key: true
  end
end
