
require 'pry'


class ParserController < ApplicationController


    def index 
        @result = File.open("sample_data.txt", "r") do |file|
            file.readline()
            binding.pry
            end

    end
      


      
        # @result = @file.split(/<\d+>/)
        # File.foreach(ARGV.first) { |line| Event.new(line.chomp) if line.start_with?(/<\d+>/) }




end
