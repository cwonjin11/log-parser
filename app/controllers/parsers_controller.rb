
require 'pry'
require 'ipaddress'

class ParsersController < ApplicationController


    def index 
        @events = Event.all
        # binding.pry
        # ip = IPAddress::IPv4.new(ip)
        # IPAddress.valid? ip


        # parsing source IP address
        # @srcIP = @event.data.match(/src=(?<source_ip>(?:\d{1,3}\.){3}\d{1,3})/)
        # parsing Destination IP address
        # @dstIP = @event.data.match(/dst=(?<destination_ip>(?:\d{1,3}\.){3}\d{1,3})/)
    end
      


      
        # @result = @file.split(/<\d+>/)
        # File.foreach(ARGV.first) { |line| Event.new(line.chomp) if line.start_with?(/<\d+>/) }




end
