Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'workouts/arm' => 'workouts#arm'
  get 'workouts/breast' => 'workouts#breast'
  get 'workouts/stomach' => 'workouts#stomach'
  get 'workouts/legs' => 'workouts#legs'
  get 'workouts/diagnosis' => 'workouts#diagnosis'
  resources :workouts
  resources :perfumes
  root 'workouts#index'

end