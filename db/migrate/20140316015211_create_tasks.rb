class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :task
      t.boolean :completed
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
