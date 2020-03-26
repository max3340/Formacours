class AddPhotoToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :photo, :string
  end
end
