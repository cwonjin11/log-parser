

class ParsersController < ApplicationController


    def index 
        @events = Event.all
        all_comments = Comment.all
        @comments = all_comments.each do |comments|
            comments
        end
        # binding.pry
    end
      



end
