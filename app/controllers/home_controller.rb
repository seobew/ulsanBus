class HomeController < ApplicationController
  require 'rubygems'
  require 'rest-client'
  require 'cgi'

  def index
    url = 'http://openapi.its.ulsan.kr/UlsanAPI/AvniPattern.xo'
    headers = { :params => { CGI::escape('ServiceKey') => '1DsJpDlux66aj06JVtoytWYc0q1m00fwZZkSicuScupCik1tq%2FgBtDsoJVuRa5wh9OY1ISD%2F0adxTFyrAWvk2w%3D%3D',CGI::escape('pageNo') => '1',CGI::escape('numOfRows') => '10',CGI::escape('dongnm') => '강동동',CGI::escape('basicDay') => '20160301' } }
    response = RestClient::Request.execute :method => 'GET', :url => url , :headers => headers
    puts response
  end

  def bus
    url = 'http://openapi.its.ulsan.kr/UlsanAPI/RouteInfo.xo'
    headers = { :params => { CGI::escape('ServiceKey') => '1DsJpDlux66aj06JVtoytWYc0q1m00fwZZkSicuScupCik1tq%2FgBtDsoJVuRa5wh9OY1ISD%2F0adxTFyrAWvk2w%3D%3D',CGI::escape('pageNo') => '1',CGI::escape('numOfRows') => '10' } }
    response = RestClient::Request.execute :method => 'GET', :url => url , :headers => headers
    puts response
  end
end
