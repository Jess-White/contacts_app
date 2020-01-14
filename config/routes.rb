Rails.application.routes.draw do
  namespace api: do
    get '/one_recipe_url' => 'cContontacts#one_contact_action'
  end 
end 

