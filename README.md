# ServerSideGa

A wrapper allowing you to post events to the Google Universal Analytics Server side API.  I have writtn much of the code based on the blog at https://deveo.com/blog/2013/05/07/server-side-google-analytics-event-tracking-with-rails/

## Installation

Add this line to your application's Gemfile:

    gem 'server_side_ga'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install server_side_ga

## Usage

Once installed you can call events and transactions.  


* tracking_code: You analytics UA-xxxxx-Y code.  NB:  Must be a Google Universal Analytics Code
* client_id: the clientId that you can obtain from Google uniquely identifying that person.  eg: http://stackoverflow.com/questions/16937071/google-analytics-read-clientid-inside-body
* time: the time the event took place (optional).  NB: Events longer than five hours ago may not be logged according to GA.
* currency:  Should be a valid three letter currency identifier

See https://developers.google.com/analytics/devguides/collection/protocol/v1/parameters#customs for a detailed explanation of the parameters.

    ServerSideGa.event(tracking_code, client_id, category, action, label = nil, value = nil, time = Time.now )
    ServerSideGa.transaction( tracking_code, client_id, id, name, revenue, shipping = 0, tax = 0, currency = "USD", time = Time.now)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
