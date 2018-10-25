class RemoveColumnLastnameToUser < ActiveRecord::Migration
  def change
    remove_column :users, :lastname
  end
end
