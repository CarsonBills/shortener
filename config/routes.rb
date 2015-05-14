Rails.application.routes.draw do
  get "/:id" => "links#show", :as => "link"
  root "links#new", :as => "new_link"
  post "/" => "links#create", :as => "links"
  get "/top" => "links#index"
end
