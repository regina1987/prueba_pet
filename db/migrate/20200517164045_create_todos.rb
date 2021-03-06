class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.boolean :status, default: false
      t.belongs_to :user, foreign_key: true
      t.belongs_to :task, foreign_key: true

      t.timestamps
    end
  end
end
