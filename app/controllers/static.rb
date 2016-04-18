require 'byebug'

get '/' do
  # puts "[LOG] Getting /"
  # puts "[LOG] Params: #{params.inspect}"
  # @urls = Url.all
  @urls = url.last
  erb :"static/index"
  # erb :root
  # erb :"users/new"
end

post '/urls' do
  # create a new url
  @url = Url.new(long_url: params['long_url'])
  @url.short_url = "www.nit.com/#{Url.shorten}"
  # if url.save
  erb :"static/shortened_url"
 #  else
 #   redirect '/'
 # end
end

get '/:short_url' do
  #redirect to appropriate "long" URL
  redirect "#{url.long_url}"
end