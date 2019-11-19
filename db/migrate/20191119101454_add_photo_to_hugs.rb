class AddPhotoToHugs < ActiveRecord::Migration[5.2]
  def change
    add_column :hugs, :photo, :string
  end
end
