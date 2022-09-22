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

     patch "/lists/:id" do
        list= List.find(params[:id])
        list.update(
            name: params[:name]
        )
        list.to_json
    end

     delete "/lists/:id" do 
        @list = List.find_by_id(params[:id])
        @list.destroy
        @list.to_json
    end
 
    end