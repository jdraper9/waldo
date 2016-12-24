get '/' do
	@stations = Station.all
	@station_at = session[:station_abbr]
	@departures = session[:departures]
	session[:departures] = nil
	session[:station_at] = nil
	erb :'index'
end

post '/' do
	station = Station.find_by(abbr: params[:station])
	@game = (station.games.find{ |game| game.active == true})
	session[:station_abbr] = params[:station]
	session[:departures] = get_departures(@params[:station])
	if @game
		redirect "/games/#{@game.id}"
	else
		redirect '/'
	end
end