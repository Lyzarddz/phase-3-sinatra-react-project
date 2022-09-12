class ListsController < ApplicationController

    get '/lists' do
        list= List.all
        list.to_json()
    end

    post "/lists" do
        list  = List.new(
            name: params[:name])
 
         if list.save
             list.to_json
         else
             {errors: list.errors.full_messages}.to_json
         end
     end
 
    end