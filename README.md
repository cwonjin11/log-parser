Log-parser is a Ruby on Rails web application that analyze event logs.
User can add a log through a form and can parse the log by clicking the button.
All parsed logs can be seen in one page with "source IP address" and "destination IP address".


## Install Instructions

Visit [log-parser](https://github.com/cwonjin11/log-parser) to begin using the app.

1. Clone this repository
2. Run `bundle install`
3. Run `rails db:migrate` and  `rails db:seed` and then run `rails s`. 
4. Open a new tab in your browser of (http://localhost:3000) to start your rails server

If you have error mentioning "Rails: Webpacker::Manifest::MissingEntryError"
run `rails webpacker:install` and then run rails server again.


## Features

1. Data creation and validation
    - User can parse event logs by submitting them one-by-one through a form
    - Data must include Source IP address and Destination IP address
    - Log can be deleted
2. Comments available
    - Each log can have many comments 
    - User can edit or delete comments  
    - Deleting event log will destroy all related comments
3. Checking Source IP & Destination IP
    - Check if IP address is valid
    - Check if IP address is private


## reference 
Class: IPAddress::IPv4 - RubyDoc.info => https://www.rubydoc.info/gems/ipaddress/0.8.0/IPAddress/IPv4#private%3F-instance_method