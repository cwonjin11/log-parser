class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end

    def show
        @event = Event.find(params[:event_id])
        @log_comments = @event.comments
        # binding.pry
        
        # binding.pry
    end

    def new
        @event = Event.find(params[:event_id])
    end


    def create
        @event = Event.find(params[:event_id])
        # binding.pry
        @comment = @event.comments.create(params[:comment].permit(:comment))
        # binding.pry
        redirect_to event_path(@event)    
    end
  


    def destroy
        @event = Event.find(params[:event_id])
        @comment = @event.comments.find(params[:id])
        @comment.destroy
        redirect_to event_path(@event)
    end


end
