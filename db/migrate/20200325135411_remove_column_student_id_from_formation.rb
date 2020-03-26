class RemoveColumnStudentIdFromFormation < ActiveRecord::Migration[6.0]
  def change
  remove_reference :formations, :student, index: true, foreign_key: true
  end
end
