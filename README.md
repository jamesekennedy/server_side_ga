# ServerSideGa

A wrapper allowing you to post events to the Google Universal Analytics Server side API.  

## Installation

Add this line to your application's Gemfile:

    gem 'server_side_ga'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install server_side_ga

## Usage

Once installed you can call events and transactions.  

Eg:
'ServerSideGa.event(tracking_code, client_id, category, action, label = nil, value = nil, time = Time.now )'
'ServerSideGa.transaction( tracking_code, client_id, id, name, revenue, shipping = 0, tax = 0, currency = "USD", time = Time.now)'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
