require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require 'googl'


set :database, {adapter: 'postgresql',database: 'url-shortener', host: 'localhost'}

class Link < ActiveRecord::Base
	has_many :comments 
end

class Comment < ActiveRecord::Base
	belongs_to :links
end

get '/links' do
	erb :url_index	
end

get 'links/new' do
	erb :url_form
end 





def random_string(length) 
	 rand(36**length).to_s(36) 
end









