class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed, default: false

      t.timestamps null: false
    end
    
    add_reference :tasks, :list, index: true
  end
end
