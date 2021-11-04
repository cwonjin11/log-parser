Log-parser is a Ruby on Rails web application that analyze event logs.
User can add a log through a form and can parse the log by clicking the button.
All parsed logs can be seen in one page with "source IP address" and "destination IP address".


## Install Instructions

Visit [log-parser](https://github.com/cwonjin11/log-parser) to begin using the app.

Clone this repository, run `bundle install`, `rails db:migrate`, and then run `rails s`. Open a new tab in your browser of (http://localhost:3000) to start your rails server

If you have error mentioning "Rails: Webpacker::Manifest::MissingEntryError"
run `bundle exec rails webpacker:install`

## reference 
Class: IPAddress::IPv4 - RubyDoc.info => https://www.rubydoc.info/gems/ipaddress/0.8.0/IPAddress/IPv4#private%3F-instance_method