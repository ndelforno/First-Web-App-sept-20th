require 'sinatra'

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ["Git", "HTML", "CSS", "Ruby"]
  @interests =  ['cats', 'art', 'music', 'films', 'coffe' ]
  erb :about_me
end

get '/favorites' do
  @fav_links = ["Books I read", "Games I play", "Music I listen"]
  erb :favorites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('portfolio')
end
