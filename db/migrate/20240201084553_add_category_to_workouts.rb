class AddCategoryToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :category, :string
  end
end
