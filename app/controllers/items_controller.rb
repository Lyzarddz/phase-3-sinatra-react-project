class ItemsController < ApplicationController

    get "/items" do
        item = Item.all 
        item.to_json
    end

end