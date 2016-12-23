get '/' do
	@stations = Station.all
	@station_at = session[:station_abbr]
	@departures = session[:departures]
	session[:departures] = nil
	session[:station_at] = nil
	erb :'index'
end

post '/' do
	session[:station_abbr] = params[:station]
	session[:departures] = get_departures(@params[:station])
	redirect '/'
end