require "server_side_ga/version"
require 'rest_client'


module ServerSideGa


 
  @@endpoint = "http://www.google-analytics.com/collect"
  @@version = "1"
 
   
   def self.event(tracking_code, client_id, category, action, label = nil, value = nil )

    params = {
      :v => @@version,
      :tid => tracking_code,
      :cid => client_id,
      :t => "event",
      :ec => category,
      :ea => action,
      :el => label,
      :ev => value
    }

    self.hit( params )

  end


  # 
  def self.transaction( tracking_code, client_id, id, name, revenue, shipping = 0, tax = 0, currency = "USD", time = Time.now)
    # report the time differene in miliseconds between event creation time and now
    queue_time = (Time.now - time) * 1000
    params = {
      :v => @@version,
      :tid => tracking_code,
      :cid => client_id,
      :t => "transaction",
      :qt => queue_time.to_s,
      :ti => id,
      :ta => name,
      :tr => revenue,
      :ts => shipping,
      :tt => tax,
      :cu => currency


    }

    self.hit( params )
  end


private

  def self.hit( params )
    begin
      response = RestClient.post(@@endpoint, params )
      return response.code
    rescue  RestClient::Exception => rex
      return false
    end
  end

end


