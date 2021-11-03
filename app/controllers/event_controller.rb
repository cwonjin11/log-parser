require 'pry'
require 'json'
class EventController < ApplicationController



    def index
        # binding.pry
        @@all_events = [] 

        file = File.open("sample_data.txt", "r")
        while (line = file.gets)
            @@all_events << line
        end
        file.close
       @events =  @@all_events.map do |event| event.gsub(/,/, "<br />") #if event.start_with?(/<\d+>/)
        # binding.pry
# binding.pry
        end
    

    end

    def new
        @event = File.open("sample_data.txt", "a")
        # binding.pry
    end

    def create
        binding.pry
        path = "sample_data.txt"
  
        content = @file
        File.open(path, "w+") do |f|
          f.write(content)
          
        end
        
        if @file.save
            redirect_to event_index_path(@file)
        end
    end

end
