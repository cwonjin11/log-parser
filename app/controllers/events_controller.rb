require 'pry'
require 'json'
class EventsController < ApplicationController



    def index


        @events = Event.all 
#         # binding.pry
#         @@all_events = [] 

#         file = File.open("sample_data.txt", "r")
#         while (line = file.gets)
#             @@all_events << line
#         end
#         file.close
#        @events =  @@all_events.map do |event| event.gsub(/,/, "<br />") #if event.start_with?(/<\d+>/)
#         # binding.pry
# # binding.pry
#         end
    

    end

    def new

        
        @event = Event.new
        
        # @file = File.open("sample_data.txt", "a")
        # # binding.pry
    end

    def create
        # binding.pry

        @event = Event.new(event_params)

        if @event.save
            flash[:message] = "You've successfully created a new event."
            redirect_to new_event_path(@event) #directly send the user to the review page 
        else
            render :new
        end

        # path = "sample_data.txt"
        # # binding.pry
        # content = @file
        # File.open(path, "w+") do |f|
        #   f.write(content)
          
        # end
        
        # if @file.save
        #     redirect_to event_index_path(@file)
        # else 
        #     redirect_to new_event_path
        #     flash[:message] = "something wrong"
        # end

    end



    private

        def event_params
            params.require(:event).permit(:data) 
        end     
    

end
