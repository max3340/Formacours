class AddFomrationIdToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :formation, index: true
  end
end
