require 'httparty'

class ApplicationController < ActionController::Base

    def index
        return if !params.key?(:winners)

        @num = 20
        @total = DB.size
        @winners = []

        (1..@num).each do |i|
            id = rand(@total)
            user = DB.keys[id]
            entry = DB[user]

            @winners.push({
                :num => id,
                :entry => entry,
            })
        end
    end

end
