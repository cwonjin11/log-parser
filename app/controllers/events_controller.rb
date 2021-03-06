
class EventsController < ApplicationController
    before_action :find_event, only: [:show, :destroy]

    def index
        @events = Event.all 
    end


    def show
        # parsing source IP address
        begin
        @srcIP = @event.data.match(/src=((25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)\.){3}(25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)/)[0].slice(4...)
        rescue NoMethodError
            @srcIP = @event.data.match(/src=((\d{1,3}\.){3}\d{1,3})/)[1]
        end

        # parsing Destination IP address
        @dstIP = @event.data.match(/dst=((25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)\.){3}(25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)/)[0].slice(4...)
        # validation check for source IP
        @srcIP_validation_check = IPAddress.valid? @srcIP
        # validation check for destination ip
        @dstIP_validation_check = IPAddress.valid? @dstIP
        # private check 
        if @srcIP_validation_check == false
            @srcIP_private_check = "false"
            ip2 = IPAddress @dstIP
            @dstIP_private_check = ip2.private?
        else
            ip = IPAddress @srcIP
            @srcIP_private_check = ip.private?
            ip2 = IPAddress @dstIP
            @dstIP_private_check = ip2.private?
        end

    end


    def new
        @event = Event.new
    end


    def create
        @event = Event.new(event_params)
        if @event.save
            flash[:message] = "You've successfully created a new log."
            redirect_to events_path(@event)
        else
            render :new
        end
    end


    def destroy
        @event.destroy
        flash[:message] = "You've deleted the log!"
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
