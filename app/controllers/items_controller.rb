

class ItemsController < ApplicationController

    get "/items" do
        item = Item.all 
        item.to_json()

    end

    post "/items" do
       item  = Item.new(
        name: params[:name],
        category: params[:category]
       )

        if item.save
            item.to_json
        else
            {errors: item.errors.full_messages}.to_json
        end
    end

    patch "/items/:id" do
        item= Item.find(params[:id])
        item.update(
            name: params[:name],
            category: params[:category]
        )
    end


    delete "/items/:id" do
        @item = Item.find_by_id(params[:id])
        @item.destroy
        @item.to_json
    end
end