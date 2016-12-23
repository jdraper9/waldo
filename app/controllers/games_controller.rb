get '/games' do
	"HEY"
end

post '/games' do
	# need ends_at, active, waldo_description, waldo_key, waldo_id, station_id, winner_id, join_id
	#create Time object at time of train arrival
	key = generate_key
	station_at = params[:station_at]
	awaiting_train = params[:train]
	ends_at = get_end_time(station_at, awaiting_train)
	p "/^<>|?//"*20
	p ends_at
	game = Game.create({
			ends_at: ends_at,
			active: true,
			waldo_description: params[:wald_desc],
			waldo_key: key,
			waldo_id: current_user.id,
			station_id: Station.find_by(abbr: station_at).id,
		})

	redirect "/games/#{game.id}"
end

get '/games/:id' do
	@game = Game.find(params[:id])
	if request.xhr?
		@game.ends_at.to_s
	else
		erb :'games/show'
	end
end
