class ItemsController < ApplicationController

    get "/items" do
        item = Items.all 
        item.to_json
    end

end