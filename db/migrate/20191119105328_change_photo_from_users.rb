class ChangePhotoFromUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :photo, :string, default:'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
  end
end
