class ChangePhotoFromHugs < ActiveRecord::Migration[5.2]
  def change
     change_column :hugs, :photo, :string, default:'https://images.unsplash.com/photo-1517346665566-17b938c7f3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
  end
end
