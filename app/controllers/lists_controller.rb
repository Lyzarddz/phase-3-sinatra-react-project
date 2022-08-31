class ListsController < ApplicationController

    get '/lists/new' do
        list= Lists.all
        list.to_json
    end

end