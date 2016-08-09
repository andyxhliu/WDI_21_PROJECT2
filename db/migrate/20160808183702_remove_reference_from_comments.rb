class RemoveReferenceFromComments < ActiveRecord::Migration[5.0]
  def change 
    remove_reference(:comments, :group, index: true, foreign_key: true)
  end
end
