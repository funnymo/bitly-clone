require 'byebug'

get '/' do
  p Url.all
  @urls = url.last
  erb :"static/index"
end

post '/urls' do
  byebug
  # if Url.where(long_url) == params['long_url']
    url = Url.new(long_url: params['long_url'])
    url.short_url = "www.nit.com/#{Url.shorten}"
    if url.save
      @url = url
      erb :"static/shortened_url"
    else
      erb :"static/error"
    end
  # else
  #   erb :"static/error"
  # end
end

get '/:short_url' do
  #redirect to appropriate "long" URL
  y = Url.find_by(short_url: params[:short_url])
  y.click_count += 1
  y.save
  redirect "#{y.long_url}"
end