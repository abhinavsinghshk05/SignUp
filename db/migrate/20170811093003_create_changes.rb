class CreateChanges < ActiveRecord::Migration[5.1]
  def change
   rename_column :users, :DOB, :dob
  end
end
