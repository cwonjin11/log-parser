require 'pry'
require 'json'
require 'ipaddress'
class EventsController < ApplicationController

    before_action :find_event, only: [:show, :destroy]

    def index
        @events = Event.all 
    end


    def show
        # parsing source IP address
        @srcIP = @event.data.match(/src=((\d{1,3}\.){3}\d{1,3})/)[1]
        # binding.pry
        
        # parsing Destination IP address
        @dstIP = @event.data.match(/dst=((\d{1,3}\.){3}\d{1,3})/)[1]
        # binding.pry
        @srcIP_validation_check = IPAddress.valid? @srcIP
        @dstIP_validation_check = IPAddress.valid? @dstIP
        binding.pry
    end


    def new
        @event = Event.new
    end


    def create
        @event = Event.new(event_params)
        if @event.save
            # flash[:message] = "You've successfully created a new event."
            redirect_to events_path(@event) #directly send the user to the review page 
        else
            render :new
        end
    end


    def destroy
        @event.destroy
        # flash[:message] = "You've successfully deleted the event!"
        redirect_to events_path

    end


    private

        def find_event
            @event= Event.find_by_id(params[:id])
        end

        def event_params
            params.require(:event).permit(:data) 
        end     
    

end
