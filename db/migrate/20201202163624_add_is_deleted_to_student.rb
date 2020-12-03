class AddIsDeletedToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :isDeleted, :boolean, default: false
  end
end
