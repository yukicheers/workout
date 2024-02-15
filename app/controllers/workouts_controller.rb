class WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all
    end

    def new
        @workouts = Workout.new
    end

    def create
        workouts = Workout.new(workout_params)
        if workouts.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end
    
    def show
        @workouts = Workout.find(params[:id])
    end

    def edit
        @workouts = Workout.find(params[:id])
    end

    def update
        workouts = Workout.find(params[:id])
        if workouts.update(workout_params)
          redirect_to :action => "show", :id => workouts.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        workouts = Workout.find(params[:id])
        workouts.destroy
        redirect_to action: :index
    end

    def diagnosis
      @workouts = Workout.new
    end

    def arm
      @workouts = Workout.all
    end

    def breast
      @workouts = Workout.all
    end

    def stomach
      @workouts = Workout.all
    end

    def legs
      @workouts = Workout.all
    end

  private
    def workout_params
      params.require(:workout).permit(:name, :explain, :number, :time, :youtube_url, :category)
    end

end