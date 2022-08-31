class ListsController < ApplicationController

    get '/lists' do
        list= List.all
        list.to_json
    end

end