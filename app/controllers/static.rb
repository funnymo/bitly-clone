get '/' do
  @urls = url.last
  erb :"static/index"
end

post '/urls' do
  # if Url.where(long_url) == params['long_url']
    url = Url.new(long_url: params['long_url'])
    url.short_url = url.shorten
    if url.save
      @url = url
        erb :"static/index"
    else
        erb :"static/error"
    end
end

get '/:short_url' do
  #redirect to appropriate "long" URL
  y = Url.find_by(short_url: params[:short_url])
   y.click_count += 1
   y.save
  redirect "https://" + y.long_url
end

get '/:table' do
    @url=Url.all
    erb :"static/click"
end