class CamerasController < ApplicationController
  require 'sonycam'
  def zoom_in
      api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
      api.request :actZoom, :in, :start
      respond_to do |format|
       format.html
       format.json   { render :nothing => true }
     end
  end

  def zoom_out
      api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
      api.request :actZoom, :out, :start
      respond_to do |format|
       format.html
       format.json   { render :nothing => true }
     end
  end

  def take_pic
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    image_url = api.request :actTakePicture
    respond_to do |format|
     format.html
     format.json   { render :json => image_url }
   end
  end

  def get_exposure_mode
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :getExposureMode
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def e_intelligent
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :setExposureMode, "Intelligent Auto"
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def e_superior
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :setExposureMode, "Superior Auto"
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def e_program
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :setExposureMode, "Program Auto"
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def e_aperture
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :setExposureMode, "Aperture"
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def e_shutter
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :setExposureMode, "Shutter"
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def get_iso
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :getIsoSpeedRate
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def set_iso
    speed = params[:iso]
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    exp = api.request :setIsoSpeedRate, speed
    respond_to do |format|
     format.json   { render :json => exp }
    end
  end

  def get_f
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    f = api.request :getFNumber
    respond_to do |format|
     format.json   { render :json => f }
    end
  end

  def set_f
    f = params[:f]
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    ap = api.request :setFNumber, f
    respond_to do |format|
     format.json   { render :json => ap }
    end
  end

  def get_shutter
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    f = api.request :getShutterSpeed
    respond_to do |format|
     format.json   { render :json => f }
    end
  end

  def set_shutter
    s = params[:s]
    api = Sonycam::API.new "http://10.0.0.1:10000/sony/camera"
    ap = api.request :setShutterSpeed, s
    respond_to do |format|
     format.json   { render :json => ap }
    end
  end


end
