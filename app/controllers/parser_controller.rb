
require 'pry'


class ParserController < ApplicationController


    def index 
        @data = File.readlines('sample_data.txt')
        # binding.pry
        # @event = @data.each do |line|
        #     # binding.pry
        #     if line.start_with?(/\d+/)
        #         puts "\n"
        #     else
        #         puts "wow"
        #     end
        # end


    end
      


      
        # @result = @file.split(/<\d+>/)
        # File.foreach(ARGV.first) { |line| Event.new(line.chomp) if line.start_with?(/<\d+>/) }




end
