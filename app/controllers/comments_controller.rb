class CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :edit]
    before_action :find_event, only: [:new, :create, :edit, :update, :destroy]
    before_action :find_event_comments, only: [:update, :destroy]

    def index
        @comments = Comment.all
    end

    def show
        
    end

    def new
        @comment = @event.comments.build
    end

    
    def create
        @comment = @event.comments.create(comment_params)
        redirect_to event_path(@event)   
    end
    
    
    def edit

    end
    
    
    def update
        if @comment.update(comment_params)
            flash[:message] = "Comment has been updated!"
            redirect_to event_path(@event)
        else
            render :edit
        end
    end
    
    
    def destroy
        @comment.destroy
        flash[:message] = "Comment has been deleted!"
        redirect_to event_path(@event)
    end




    private
    
    def find_comment
        @comment = Comment.find(params[:id])
    end

    def find_event
        @event = Event.find(params[:event_id])
    end

    def find_event_comments
        @comment = @event.comments.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:comment, :event_id)
    end


end
