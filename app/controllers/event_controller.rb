require 'pry'
require 'json'
class EventController < ApplicationController



    def index
        # binding.pry
       @file = File.read("sample_data.txt")

    end

end
