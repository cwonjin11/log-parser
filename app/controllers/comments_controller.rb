class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end

    def show
        @comment = Comment.find(params[:id])
    end

    def new
        @event = Event.find(params[:event_id])
        @comment = @event.comments.build
    end

    
    def create
        @event = Event.find(params[:event_id])
        @comment = @event.comments.create(comment_params)
        redirect_to event_path(@event)   
    end
    
    
    def edit
        @comment= Comment.find(params[:id])
        @event = Event.find(params[:event_id])
    end
    
    
    def update
        @event = Event.find(params[:event_id])
        @comment = @event.comments.find(params[:id])
        if @comment.update(comment_params)
            flash[:message] = "Comment has been updated!"
            redirect_to event_path(@event)
        else
            render :edit
        end
    end
    
    
    def destroy
        @event = Event.find(params[:event_id])
        @comment = @event.comments.find(params[:id])
        @comment.destroy
        flash[:message] = "Comment has been deleted!"
        redirect_to event_path(@event)
    end




    private
    
    def comment_params
      params.require(:comment).permit(:comment, :event_id)
    end


end
