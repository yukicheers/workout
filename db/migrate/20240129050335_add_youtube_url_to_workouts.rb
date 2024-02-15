class AddYoutubeUrlToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :youtube_url, :string
  end
end
