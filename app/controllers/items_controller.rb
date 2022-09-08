

class ItemsController < ApplicationController

    get "/items" do
        item = Item.all 
        item.to_json(include: [list_id: {include: [:name]}])

    end

    post "/items" do
       @item  = Item.new(params[:item])

        if item.save
            @item.to_json
        else
            {errors: @item.errors.full_messages}.to_json
        end
    end

    delete "/items/:id" do
        @item = Item.find_by_id(params[:id])
        @item.destroy
        @item.to_json
    end
end