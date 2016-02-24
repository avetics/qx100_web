require 'sinatra'
require 'sonycam'

include Sonycam
DD_PATH = File.join(ENV['HOME'], '.sonycam')
api_client = API.new DeviceDescription.new(DD_PATH).api_url(:camera)

set :public_folder, File.dirname(__FILE__) + '/'


get '/live' do
  boundary = 'i_love_ruby'
  status 200
  headers 'Content-Type' => "multipart/x-mixed-replace;boundary=#{boundary}\n"
  count = 0
  stream do |out|

    liveview_url = api_client.request('startLiveview').first
    Liveview.stream(liveview_url) do |packet|
      break if out.closed?
      out << <<-EOS
--#{boundary}\r
Content-Type: image/jpeg\r
\r
#{packet[:payload_data][:jpeg_data]}\r
EOS
      print "#{count += 1}\r"
    end
  end
end

get '/' do
    erb :index
end
