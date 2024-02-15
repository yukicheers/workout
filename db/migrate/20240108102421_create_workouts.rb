class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :explain
      t.string :number
      t.string :time

      t.timestamps
    end
  end
end
