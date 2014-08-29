Rails.application.routes.draw do

  root 'questions#index'

  get 'questions/index' => 'questions#index', as: :questions

  get 'questions/new' => 'questions#new', as: :new_question

  post 'questions/create' => 'questions#create'

  get 'questions/:id' => 'questions#show', as: :question

  delete 'questions/:id' => 'questions#destroy'

  post 'questions/:question_id/answers/create' => 'answers#create'

  put 'questions/:question_id/answers/:id/edit' => 'answers#edit'

  delete 'questions/:question_id/answers/:id' => 'answers#destroy'

  post 'questions/:question_id/answers/:answer_id/comments/create' => 'comments#answer'

  post 'questions/:question_id/comments/create' => 'comments#question'

  delete 'questions/:question_id/comments/:id' => 'comments#destroy'

  get '/users/login' => 'users#login', as: :login

  post '/users/signin' => 'users#signin'

  get '/users/signout' => 'users#signout', as: :signout

  get 'users/new' => 'users#new', as: :new_user

  post 'users/create' => 'users#create', as: :users

  get 'users/:id/edit' => 'users#edit', as: :edit_user

  put 'users/:id' => 'users#update'

  get 'users/:id' => 'users#show', as: :user

  delete 'users/:id' => 'users#destroy'

end
