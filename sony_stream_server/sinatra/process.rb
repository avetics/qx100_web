require 'sonycam'


location = Sonycam::Scanner.scan.first
device = Sonycam::DeviceDescription.new location

camera_url = device.api_url :camera
camera_api = Sonycam::API.new camera_url

url = camera_api.request :actTakePicture
puts url

