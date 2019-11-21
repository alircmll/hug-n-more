class UpdatePhotoFromUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :photo, nil
  end
end
