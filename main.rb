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

get '/' do
	erb :url_index	
end

get '/new' do
	erb :url_form
end 

post '/convert' do
	def shorten_link 
		(Time.now.to_i + rand(36**8)).to_s(36)
	end
	puts "http://#{shorten_link}"  
	redirect '/short'
end



















# def random_string(length) 
# 	 rand(36**length).to_s(36) 
# end

# def get_site_url(short_url) 
# SiteConfig.url_base + short_url 
# end
#   def shortened
#     id.to_s(Radix)
#   end

#   # unconvert the shortened version back to an ID
#   def self.shortened_to_id(shortened)
#     shortened.to_i(Radix)
#   end

#   # convert and lookup
#   def self.find_by_shortened(shortened)
#     find shortened_to_id(shortened)
#   end
# end

# def make_token
#   ("%d%d" % [rand(100), Time.now.to_i]).to_i.to_s(36)
# end







