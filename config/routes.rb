Mine::Application.routes.draw do

root 'tasks#index'

resources :projects

resources :blog_links

resources :timelines

resources :users

resources :links

resources :careers

resources :studies

resources :fit_posts

get "/trails" =>  "tasks#trails",               as: "trails"
get "/tasks/calendar" =>  "tasks#calendar",     as: "calendar"
get "/tasks/archive" =>  "tasks#archive",       as: "archive"
get "/tasks/notes/:id" =>  "tasks#notes",       as: "notes"
get "/practice1" =>  "studies#practice1",       as: "practice1"
get "/practice2" =>  "studies#practice2",       as: "practice2"
get "/practice3" =>  "studies#practice3",       as: "practice3"
get "/dv_class_blogs" => "blog_links#dv_blogs", as: "dv_blogs"
get "/challenge"  => "fit_posts#challenge",     as: "challenge"

resources :tasks
end
